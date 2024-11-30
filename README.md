# Docker image for OpenBao

This project aims to provide a simple Docker image to dockerize and run [OpenBao](https://github.com/openbao/openbao) with `kubectl`.

### Run OpenBao

#### Get latest image
Images are now hosted directly on GitHub:
```Dockerfile
docker pull ghcr.io/facthunder/openbao:latest
```

#### Run core checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/manifests ghcr.io/facthunder/openbao:latest kubectl apply -f /manifests
```

### Versions matrix
Here is the versions matrix of the image:

|                          TAG                           |                 KUBECTL VERSION                  |                          BASE IMAGE                           |
|:------------------------------------------------------:|:------------------------------------------------:|:-------------------------------------------------------------:|
|  [latest](https://github.com/Facthunder/openbao)       |  [1.30](https://github.com/kubernetes/kubectl)   | [openbao/openbao:2.1](https://github.com/openbao/openbao)     |
|  [2.1](https://github.com/Facthunder/openbao)          |  [1.30](https://github.com/kubernetes/kubectl)   | [openbao/openbao:2.1](https://github.com/openbao/openbao)     |

### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2024 Facthunder.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)
