import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GENERATOR = ROOT / "publication/history/generate.py"
spec = importlib.util.spec_from_file_location("publication_history", GENERATOR)
history = importlib.util.module_from_spec(spec)
spec.loader.exec_module(history)


class PublicationHistoryTest(unittest.TestCase):
    def setUp(self):
        self.package_list = json.loads((ROOT / "publication/package-list.json").read_text())

    def test_existing_releases_and_ci_are_linked(self):
        page = history.render_history(self.package_list)
        for entry in self.package_list["list"]:
            self.assertIn(f'href="{entry["path"]}"', page)
            self.assertIn(f'>{entry["version"]}</a>', page)
        self.assertIn("trial-use (current release)", page)
        self.assertNotIn("<script", page)

    def test_html_is_escaped(self):
        self.package_list["title"] = '<script>alert("x")</script>'
        self.package_list["list"][0]["desc"] = "<img onerror=alert(1)>"
        page = history.render_history(self.package_list)
        self.assertIn("&lt;script&gt;", page)
        self.assertIn("&lt;img onerror=alert(1)&gt;", page)
        self.assertNotIn("<script>", page)

    def test_invalid_url_and_missing_description_fail(self):
        for invalid in ("javascript:alert(1)", "https://example.org/path?query=1", "https://example.org/#fragment"):
            with self.subTest(path=invalid):
                self.package_list["list"][0]["path"] = invalid
                with self.assertRaisesRegex(ValueError, "absolute HTTP"):
                    history.render_history(self.package_list)
        self.package_list["list"][0]["path"] = "https://example.org"
        del self.package_list["list"][0]["desc"]
        with self.assertRaisesRegex(ValueError, "desc"):
            history.render_history(self.package_list)

    def test_cli_writes_history(self):
        with tempfile.TemporaryDirectory() as tmp:
            output = Path(tmp) / "history.html"
            subprocess.run(
                [sys.executable, str(GENERATOR), str(ROOT / "publication/package-list.json"), str(output)],
                check=True,
            )
            self.assertIn("26.1.0", output.read_text(encoding="utf-8"))
            self.assertIn("26.0.0", output.read_text(encoding="utf-8"))


if __name__ == "__main__":
    unittest.main()
