# superClipboard OCR Runtime Contract

The OCR runtime is published through the
`wmousew/superClipboard-release` GitHub repository. The main app downloads the
stable channel manifest from the repository default branch, verifies the
package SHA-256, extracts the ZIP, runs a self-test, and activates the version.

## Repository layout

```text
main
└── channels/
    └── ocr-stable.json

Release tag: ocr-v1.0.0
└── superClipboard-ocr-windows-x64-1.0.0.zip
```

The app reads:

```text
https://raw.githubusercontent.com/wmousew/superClipboard-release/main/channels/ocr-stable.json
```

Do not use `releases/latest/download/ocr-manifest.json`. App releases and OCR
releases share the same repository, so the latest release may not be an OCR
release.

The ZIP root must contain:

```text
component.json
ocr-worker.exe
models/
required Paddle Inference and OpenCV DLLs
```

## Worker commands

Self-test:

```text
ocr-worker.exe --self-test
```

The command must exit with code `0` when the runtime and models are usable.

Recognition uses one JSON request on stdin:

```json
{"requestId":"uuid","action":"recognize","imagePath":"C:/path/image.png","languages":["zh-CN","en"]}
```

The worker writes exactly one JSON object to stdout and exits:

```json
{"requestId":"uuid","success":true,"text":"recognized text","durationMs":620}
```

Errors use a non-zero exit code:

```json
{"requestId":"uuid","success":false,"error":"message"}
```

Do not write diagnostic logs to stdout. Use stderr for logs.

## Publishing

1. Build and assemble the OCR ZIP.
2. Create the GitHub Release tag `ocr-vX.Y.Z`.
3. Upload the ZIP as a Release asset.
4. Generate the channel manifest:

```powershell
.\make-manifest.ps1 `
  -Package .\superClipboard-ocr-windows-x64-1.0.0.zip `
  -Version 1.0.0 `
  -Repository wmousew/superClipboard-release `
  -Output .\ocr-stable.json
```

5. Commit the generated file to `channels/ocr-stable.json` on the repository
   default branch.

Use `app-vX.Y.Z` tags for main application releases and `ocr-vX.Y.Z` tags for
OCR runtime releases.
