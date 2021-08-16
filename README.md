# Docker BuildX
[![Build Status](https://gitlab.com/shibme/docker-buildx/badges/main/pipeline.svg)](https://gitlab.com/shibme/docker-buildx/pipelines)
[![Percentage of issues still open](http://isitmaintained.com/badge/open/shibme/docker-buildx.svg)](http://isitmaintained.com/project/shibme/docker-buildx "Percentage of issues still open")

Docker BuildX is a docker image that can be used as a base for building multi-arch docker images for supported docker registries

### How to?
This project itself is built as a multi-arch docker image by itself and pushes it to three different registries (GitLab, DockerHub and AWS ECR Public)

- Please take a look into this project's [.gitlab-ci.yml](.gitlab-ci.yml) to know how to set it up to work with GitLab CI.
- You may also take a look into [this](https://gitlab.com/shibme/dictionbot/-/blob/master/.gitlab-ci.yml) as another example