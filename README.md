# ci-corretto8-maven-build

Image used for Amazon Corretto 8 Maven application builds

## Build ARGs

The following Docker build arguments are supported

| Argument        | Default                                                                   | Description                                          |
| --------------- | ------------------------------------------------------------------------- | ---------------------------------------------------- |
| ARTIFACTORY_URL | -                                                                         | Artifactory URL used by the `configure-maven` script |
| CORRETTO_URL    | https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.rpm | URL to the Corretto8 RPM download                    |
