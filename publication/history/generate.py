#!/usr/bin/env python3
"""Generate the publication history from a FHIR package list."""

import json
import sys
from html import escape
from pathlib import Path
from urllib.parse import urlparse


def required_text(value, field):
    if not isinstance(value, str) or not value.strip():
        raise ValueError(f"{field} must be a non-empty string")
    return value


def publication_url(value, field):
    value = required_text(value, field)
    parsed = urlparse(value)
    if (
        parsed.scheme not in ("http", "https")
        or not parsed.hostname
        or parsed.username is not None
        or parsed.password is not None
        or parsed.query
        or parsed.fragment
        or any(char.isspace() for char in value)
    ):
        raise ValueError(f"{field} must be an absolute HTTP(S) URL without credentials, query or fragment")
    return value.rstrip("/")


def render_history(package_list):
    title = required_text(package_list.get("title"), "title")
    package_id = required_text(package_list.get("package-id"), "package-id")
    canonical = publication_url(package_list.get("canonical"), "canonical")
    entries = package_list.get("list")
    if not isinstance(entries, list) or not entries:
        raise ValueError("list must contain at least one version")

    rows = []
    for index, entry in enumerate(entries):
        if not isinstance(entry, dict):
            raise ValueError(f"list[{index}] must be an object")
        version = required_text(entry.get("version"), f"list[{index}].version")
        path = publication_url(entry.get("path"), f"list[{index}].path")
        status = required_text(entry.get("status"), f"list[{index}].status")
        description = required_text(entry.get("desc"), f"list[{index}].desc")
        date = entry.get("date", "")
        fhir_version = entry.get("fhirversion", "")
        if not isinstance(date, str) or not isinstance(fhir_version, str):
            raise ValueError(f"list[{index}].date and fhirversion must be strings")
        if entry.get("current") is True and status != "ci-build":
            status += " (current release)"
        rows.append(
            "<tr>"
            f"<td>{escape(date)}</td>"
            f'<td><a href="{escape(path, quote=True)}">{escape(version)}</a></td>'
            f"<td>{escape(fhir_version)}</td>"
            f"<td>{escape(status)}</td>"
            f"<td>{escape(description)}</td>"
            f'<td><a href="{escape(path, quote=True)}/package.tgz">NPM package</a></td>'
            "</tr>"
        )

    return f"""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Publication history - {escape(title)}</title>
  <style>
    body {{ font-family: sans-serif; line-height: 1.5; margin: 2rem auto; max-width: 90rem; padding: 0 1rem; }}
    .table-container {{ overflow-x: auto; }}
    table {{ border-collapse: collapse; width: 100%; }}
    th, td {{ border: 1px solid #ccc; padding: 0.5rem; text-align: left; vertical-align: top; }}
    th {{ background: #f1f1f1; }}
  </style>
</head>
<body>
  <header>
    <h1>{escape(title)}</h1>
    <p><a href="{escape(canonical, quote=True)}/">Current publication</a> | {escape(package_id)}</p>
  </header>
  <main>
    <h2>Publication history</h2>
    <div class="table-container">
      <table>
        <thead><tr><th>Date</th><th>Version</th><th>FHIR version</th><th>Status</th><th>Description</th><th>Package</th></tr></thead>
        <tbody>
          {''.join(rows)}
        </tbody>
      </table>
    </div>
  </main>
</body>
</html>
"""


def main():
    if len(sys.argv) != 3:
        raise SystemExit("Usage: generate.py <package-list.json> <history.html>")
    source, destination = map(Path, sys.argv[1:])
    with source.open(encoding="utf-8") as file:
        package_list = json.load(file)
    if not isinstance(package_list, dict):
        raise ValueError("package list must be a JSON object")
    destination.write_text(render_history(package_list), encoding="utf-8")


if __name__ == "__main__":
    main()
