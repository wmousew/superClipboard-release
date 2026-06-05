# `wmousew/superClipboard-release` Layout

Recommended repository contents:

```text
README.md
channels/
└── ocr-stable.json
```

Recommended GitHub Release tags:

```text
app-v1.0.0
ocr-v1.0.0
ocr-v1.1.0
```

Each OCR Release contains exactly one runtime ZIP:

```text
superClipboard-ocr-windows-x64-1.0.0.zip
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
