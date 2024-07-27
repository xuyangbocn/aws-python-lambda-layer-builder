# Package AWS Lambda Layer for Python

This script package ready-to-upload AWS lambda layer for Python.

## How to use

1. Fill in `requirement.txt`
2. Run `./create_layer.sh`
3. Output is a folder `python/...` and its zip `layer_to_upload.zip`

## Notes

1. Docker required
2. Feel free to change variables in `create_layer.sh`
   - `PLATFORM`: whether amd64 or arm
   - `PY_VERSION`: python version for package installation
   - `DOCKER_IMAGE`: docker image if you prefer to use some other ones

## Why this?

- Solve cross platform issue on Mac chips
- One command settle everything
- Almost no footprint on local
- So far the cleanest & easiest way to build lambda layer
  - _But always interested to learn if there are better ways!_

## Acknowledgement (orz)

1. [OpenAI-AWS-Lambda-Layer by erenyasarkurt](https://github.com/erenyasarkurt/OpenAI-AWS-Lambda-Layer/)
2. [AWS Official Doc](https://github.com/awsdocs/aws-lambda-developer-guide/tree/main/sample-apps/layer-python/layer)
