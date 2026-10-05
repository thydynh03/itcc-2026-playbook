# Tạo workspace private của đội từ playbook (Windows PowerShell).
# Dùng: powershell -File scripts\new-workspace.ps1 ..\itcc-2026-workspace
param(
    [Parameter(Mandatory = $true)][string]$Target
)
$ErrorActionPreference = 'Stop'

if ((Test-Path $Target) -and (Get-ChildItem -Force $Target | Select-Object -First 1)) {
    Write-Error "Thu muc '$Target' da ton tai va khong rong. Dung de khong ghi de."
}

$root = Split-Path -Parent $PSScriptRoot
New-Item -ItemType Directory -Force $Target | Out-Null

Copy-Item -Recurse -Force (Join-Path $root 'workspace-template\*') $Target
foreach ($hidden in '.github', '.gitignore') {
    Copy-Item -Recurse -Force (Join-Path $root "workspace-template\$hidden") $Target
}
Copy-Item -Recurse -Force (Join-Path $root 'prompts') (Join-Path $Target 'prompts')
Copy-Item -Recurse -Force (Join-Path $root 'templates') (Join-Path $Target 'templates')
New-Item -ItemType Directory -Force (Join-Path $Target '.claude'), (Join-Path $Target '.agents') | Out-Null
Copy-Item -Recurse -Force (Join-Path $root '.claude\commands') (Join-Path $Target '.claude\commands')
Copy-Item -Recurse -Force (Join-Path $root '.agents\workflows') (Join-Path $Target '.agents\workflows')

git -C $Target init -q -b main

Write-Host ""
Write-Host "Da tao workspace tai: $Target"
Write-Host ""
Write-Host "Buoc tiep:"
Write-Host "  1. cd `"$Target`""
Write-Host "  2. Dien ten ba thanh vien vao STATUS.md"
Write-Host "  3. git add -A; git commit -m `"chore: khoi tao workspace`""
Write-Host "  4. Tao repo PRIVATE va day len:"
Write-Host "       gh repo create itcc-2026-workspace --private --source . --push"
Write-Host "  5. Moi hai thanh vien con lai vao repo."
Write-Host ""
Write-Host "Khong bao gio dat repo nay o che do public: no se chua case study va giai phap cua doi."
