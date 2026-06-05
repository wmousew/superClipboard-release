# superClipboard 发布仓库

本仓库用于发布 superClipboard Windows 安装包和可选 PaddleOCR 运行组件。

源码仓库：https://gitee.com/xzon/superClipboard

## 最新主程序

| 版本 | 文件 | SHA-256 |
|---|---|---|
| v1.1.0 | [superClipboard-release.zip](superClipboard-release.zip) | `157E9ABEDDAB46A3C1AE44C1D2A369D988B2B384694A833498809DFC2F47A1FB` |

`superClipboard-release.zip` 始终指向最新版。版本化文件为
[`superClipboard-windows-x64-1.1.0.zip`](superClipboard-windows-x64-1.1.0.zip)。

解压 ZIP 后运行 `superClipboard.exe`。支持 Windows 10/11 x64。

## OCR 组件

主程序保持轻量，首次启用 OCR 时按需下载 PaddleOCR 组件。OCR 安装后完全在本地运行，图片不会上传。

- OCR 发布契约：[ocr-runtime/README.md](ocr-runtime/README.md)
- 稳定通道目录：[channels/README.md](channels/README.md)
- OCR Release 标签格式：`ocr-vX.Y.Z`
- 主程序 Release 标签格式：`app-vX.Y.Z`

真实 OCR Worker 和模型包尚未发布，因此当前没有 `channels/ocr-stable.json`。
