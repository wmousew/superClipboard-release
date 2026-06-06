# `wmousew/superClipboard-release` Layout

Recommended repository contents:

```text
README.md
channels/
└── ocr-stable.json
```

Current Release tags:

```text
app-v1.1.5
ocr-v1.0.1
```

Each OCR Release contains exactly one runtime ZIP:

```text
superClipboard-ocr-windows-x64-1.0.1.zip
```

The stable channel manifest is committed to:

```text
channels/ocr-stable.json
```

The application default URL is:

```text
https://raw.githubusercontent.com/wmousew/superClipboard-release/main/channels/ocr-stable.json
```

Updating OCR consists of publishing a new immutable Release, then updating the
stable channel manifest to point to the new asset and SHA-256.
