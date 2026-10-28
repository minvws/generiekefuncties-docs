This code-repository only used to maintain/update the 'Generieke Functies documentatie'.

For **users**, a readable version of this documentation (or 'Implementation Guide') is published at: https://minvws.github.io/generiekefuncties-docs/



## Upcoming changes

Upcoming changes for this documentation are published (build) at: https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/<branch-name>

The build-logs of this build are published on https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build (could take 2-3 minutes after a commit to the repo)
In the ./build.log you can find the build log. Validation tests are in ./output/qa.html


## Releasing a version

CI builds (GitHub Pages, build.fhir.org) are marked `"notForPublication": true` in their `package.tgz` and must not be used as a published package. A publishable package is built by the release workflow (`.github/workflows/build_deploy_release.yml`), which runs the IG Publisher with `-publish http://fhir.generiekefuncties.nl/csd/<version>`.

To release version `X.Y.Z`:
1. Set `version: X.Y.Z` (and `releaseLabel`) in `sushi-config.yaml`.
2. Update `publication-request.json`: `version`, `path` (`http://fhir.generiekefuncties.nl/csd/X.Y.Z`), `status`, `desc`, and `first` (`true` only for the first publication). Check the 'Publication Request' section in `output/qa.html`.
3. Add an entry for `X.Y.Z` to `publication/package-list.json` (and remove `current: true` from the previous release entry).
4. Create a GitHub release with tag `X.Y.Z`. The workflow fails if the tag, `sushi-config.yaml`, `publication-request.json` and `publication/package-list.json` don't match, or if the package is still marked `notForPublication`.
5. Deploy the `fhir-ig.zip` release asset to the web root of fhir.generiekefuncties.nl (it contains `csd/X.Y.Z/` and `csd/package-list.json`).
6. Add the package to the [MinVWS package feed](https://code.overheid.nl/MinVWS/fhir-package-feed) and update the edition in the [FHIR IG registry](https://github.com/FHIR/ig-registry).


# Generating FSH-FHIR-resources on your desktop

If you want to generate FSH FHIR-resources based on Simplifier-FHIR-profiles (like the Dutch 'nl-core' profiles) on your local desktop, you have to [install Dotnet & Firely Terminal](https://docs.fire.ly/projects/Firely-Terminal/getting_started/InstallingFirelyTerminal.html):
```
sudo apt-get install -y dotnet-sdk-8.0
echo 'export PATH=$PATH:~/.dotnet/tools' >> ~/.bashrc
echo "-----reload bash configuration file"
source ~/.bashrc
```
create a snapshot of the Dutch profiles using 
```
fhir install nictiz.fhir.nl.r4.nl-core 0.12.0-beta.1
```

[Install NodeJS & Sushi](https://fshschool.org/docs/sushi/installation/) to generate FHIR-resource from FSH-files (it will need the snapshots you've just created):
```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo npm install -g npm@latest 
sudo npm install -g fsh-sushi
```
now you should be able to generate fhir resources from fsh-files using
```
sushi .
```