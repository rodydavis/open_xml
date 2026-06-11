## 0.3.1

- Migrate synchronous `pkg:file` operations to asynchronous ones to support web export in `WebFileSystem`
- Fix "Unsupported operation: Sync list not supported" error on web platform

## 0.3.0

- Migrate file system dependencies from `dart:io` to `pkg:file` for cross-platform compatibility (Web/Flutter)
- Refactor presentation generation logic into modular generators
- Remove old third-party validator submodule
- Fix MacOS Preview (Quick Look) for pptx files
- Add AI agent skills and generated exhaustive markdown documentation

## 0.2.0

- Add close to high level APIs
- Fix preview in quick look for pptx

## 0.1.0

- Add pptx parser and exporter
- Add xlsx parser and exporter
- Add docx parser and exporter
