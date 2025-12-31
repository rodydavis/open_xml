# Validation Instructions

To validate the generated OOXML files (docx, pptx, xlsx) using the [OOXML-Validator](https://github.com/mikeebowen/OOXML-Validator), follow these steps.

## Prerequisites

- Docker
- Docker Compose

## Setup

The validator runs inside a Docker container to ensure consistent dependencies and environment.

1.  **Build the Docker image**:
(Only needed once or if you modify the Docker configuration)

```bash
docker-compose -f validator/third_party/.build-files/compose.yaml build
```

2.  **Build the Validator Binary**:
(run this first to ensure the binary is built for the container arch)
    
```bash
docker-compose -f validator/third_party/.build-files/compose.yaml run dev ./dev.sh build linux-arm64
```

3. Copy examples to validator

```bash
rm -rf validator/third_party/examples_out
mkdir validator/third_party/examples_out
cp -r ./examples/out/ validator/third_party/examples_out/
```

## Running Validation

### Validate All Files

To run the validator against all files in the `examples/out` directory:

```bash
docker-compose -f validator/third_party/.build-files/compose.yaml run dev ./dev.sh run linux-arm64 ./examples_out
```

### Validate a Specific File

To validate a specific file, path it relative to the project root. The current directory is mounted to `/code` inside the container.

Example:
```bash
docker-compose -f validator/third_party/.build-files/compose.yaml run dev ./dev.sh run linux-arm64 ./examples_out/example.pptx
```

## Viewing Results

The output will be printed to the console (stdout). You can redirect it to a file if needed:

```bash
docker-compose -f validator/third_party/.build-files/compose.yaml run dev ./dev.sh run linux-arm64 ./examples_out > validation_report.log
```
