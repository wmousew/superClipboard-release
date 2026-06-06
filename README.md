# superClipboard 发布仓库

本仓库用于发布 superClipboard Windows 安装包和可选 PaddleOCR 运行组件。

源码仓库：https://gitee.com/xzon/superClipboard

## 最新主程序

| 版本 | 文件 | SHA-256 |
|---|---|---|
| v1.1.7 | [superClipboard-release.zip](superClipboard-release.zip) | `DFA065C2002728B2F0C23E201F79AFDCBD4E6A8823A5076BA65198AEE0DB3768` |

`superClipboard-release.zip` 始终指向最新版。版本化文件为
[`superClipboard-windows-x64-1.1.7.zip`](superClipboard-windows-x64-1.1.7.zip)。

解压 ZIP 后运行 `superClipboard.exe`。支持 Windows 10/11 x64。

也可从 [GitHub Release](https://github.com/wmousew/superClipboard-release/releases/tag/app-v1.1.7)
下载版本化安装包。

## OCR 组件

主程序保持轻量，首次启用 OCR 时按需下载 PaddleOCR 组件。OCR 安装后完全在本地运行，图片不会上传。

- 当前 OCR 版本：`v1.0.1`
- 下载大小：约 `85.8 MB`
- 支持语言：中文、英文
- OCR Release：[ocr-v1.0.1](https://github.com/wmousew/superClipboard-release/releases/tag/ocr-v1.0.1)
- 稳定通道：[channels/ocr-stable.json](channels/ocr-stable.json)
- OCR 发布契约：[ocr-runtime/README.md](ocr-runtime/README.md)
- 稳定通道目录：[channels/README.md](channels/README.md)
- OCR Release 标签格式：`ocr-vX.Y.Z`
- 主程序 Release 标签格式：`app-vX.Y.Z`

OCR ZIP SHA-256：
`1B0634BA13802F526B4E9801126F1C0CEEFA79A0676CEC652B01159B099EA21C`
