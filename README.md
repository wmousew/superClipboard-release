# MouseBox-Clipboard 发布仓库

本仓库用于发布 MouseBox-Clipboard（鼠鼠百宝箱-剪贴板）Windows 主程序、安装包和可选运行组件。

源码仓库：https://gitee.com/xzon/superClipboard

## 最新主程序

| 版本 | 文件 | SHA-256 |
|---|---|---|
| v1.2.5 | [MouseBox-Clipboard-release.zip](MouseBox-Clipboard-release.zip) | `3BBF9F88B70DAB6932A708D5DDDF5056CE93C32FA2BF8E0A80DCF09C3B4A8B2E` |

`MouseBox-Clipboard-release.zip` 始终指向最新版。版本化文件为
[`MouseBox-Clipboard-windows-x64-1.2.5.zip`](MouseBox-Clipboard-windows-x64-1.2.5.zip)。

解压 ZIP 后运行 `MouseBox-Clipboard.exe`。支持 Windows 10/11 x64。

## 单文件安装包

- 安装包：[`MouseBox-Clipboard-Setup-v1.2.5.exe`](MouseBox-Clipboard-Setup-v1.2.5.exe)
- SHA-256：`6AB381353F4C3CE94740490E85E533F0ED81ADF70639BDC97AEBE30746B1BD44`

## 文件内容搜索模块

文件内容搜索模块按需安装，依赖 OCR 组件，索引与搜索均在本地运行。

- 当前模块版本：`v1.0.0`
- 组件包：[`MouseBox-Clipboard-file-content-windows-x64-1.0.0.zip`](MouseBox-Clipboard-file-content-windows-x64-1.0.0.zip)
- 稳定通道：[channels/file-content-stable.json](channels/file-content-stable.json)
- SHA-256：`6799A37FD0C737B63CB0E9C1D12D4C34B676F5A0A5FEF95952EC6D959740B629`

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
