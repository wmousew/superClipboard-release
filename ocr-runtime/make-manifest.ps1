param(
    [Parameter(Mandatory = $true)]
    [string]$Package,

    [Parameter(Mandatory = $true)]
    [string]$Version,

    [Parameter(Mandatory = $true)]
    [string]$Repository,

    [string]$MinimumAppVersion = "0.1.0",
    [string]$Output = "ocr-manifest.json"
)

$packageFile = Get-Item -LiteralPath $Package
$assetName = $packageFile.Name
$hash = (Get-FileHash -LiteralPath $packageFile.FullName -Algorithm SHA256).Hash.ToLowerInvariant()

$manifest = [ordered]@{
    version = $Version
    minimumAppVersion = $MinimumAppVersion
    downloadUrls = @(
        "https://github.com/$Repository/releases/download/ocr-v$Version/$assetName"
        "https://gitee.com/xzon/superClipboard-releases/releases/download/ocr-v$Version/$assetName"
    )
    size = $packageFile.Length
    sha256 = $hash
}

$manifest | ConvertTo-Json | Set-Content -LiteralPath $Output -Encoding UTF8
Write-Host "Wrote $Output"
