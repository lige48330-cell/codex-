$ErrorActionPreference = 'Stop'

try {
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
} catch {
    # Older terminals may ignore output encoding changes.
}

function Write-Section {
    param([string]$Title)
    Write-Host ''
    Write-Host "== $Title ==" -ForegroundColor Cyan
}

function Write-Ok {
    param([string]$Message)
    Write-Host "[OK] $Message" -ForegroundColor Green
}

function Write-WarnLine {
    param([string]$Message)
    Write-Host "[WARN] $Message" -ForegroundColor Yellow
}

function Write-InfoLine {
    param([string]$Message)
    Write-Host "[INFO] $Message" -ForegroundColor Gray
}

function Test-CommandExists {
    param([string]$Name)
    return $null -ne (Get-Command $Name -ErrorAction SilentlyContinue)
}

function Get-CommandVersion {
    param(
        [string]$Command,
        [string[]]$Arguments
    )

    try {
        $result = & $Command @Arguments 2>&1 | Select-Object -First 1
        if ($null -eq $result) {
            return $null
        }

        return $result.ToString()
    } catch {
        return $null
    }
}

function Test-CodexRunnable {
    $versionText = Get-CommandVersion -Command 'codex' -Arguments @('--version')
    if ($versionText) {
        return @{
            Runnable = $true
            Detail = $versionText
        }
    }

    $helpText = Get-CommandVersion -Command 'codex' -Arguments @('--help')
    if ($helpText) {
        return @{
            Runnable = $true
            Detail = $helpText
        }
    }

    return @{
        Runnable = $false
        Detail = 'Command exists, but version/help check did not run successfully.'
    }
}

Write-Host 'Codex 小白环境检查 / Codex Environment Checker' -ForegroundColor Magenta
Write-Host '这个脚本只检查你的环境，不安装软件，不修改系统配置。' -ForegroundColor Gray
Write-Host 'This script checks your environment. It is not an installer.' -ForegroundColor Gray
Write-Host '当前自动化主要面向 Windows + PowerShell。' -ForegroundColor Gray

$missing = New-Object 'System.Collections.Generic.List[string]'
$attention = New-Object 'System.Collections.Generic.List[string]'

Write-Section '适用范围 / Support Scope'
Write-InfoLine '本仓库自动化目前主要面向 Windows。'
Write-InfoLine 'If you use macOS or Linux, go to the official Quickstart first.'

Write-Section 'PowerShell'
$psVersion = $PSVersionTable.PSVersion.ToString()
Write-Ok "PowerShell version: $psVersion"

Write-Section 'Node.js'
if (Test-CommandExists 'node') {
    $nodeVersion = Get-CommandVersion -Command 'node' -Arguments @('-v')
    Write-Ok "Node.js detected: $nodeVersion"
} else {
    Write-WarnLine '未找到 Node.js / Node.js not found.'
    $missing.Add('Node.js')
}

Write-Section 'npm'
if (Test-CommandExists 'npm.cmd') {
    $npmVersion = Get-CommandVersion -Command 'npm.cmd' -Arguments @('-v')
    Write-Ok "npm detected via npm.cmd: $npmVersion"
    Write-InfoLine 'If npm fails in PowerShell, try npm.cmd first.'
}
elseif (Test-CommandExists 'npm') {
    $npmVersion = Get-CommandVersion -Command 'npm' -Arguments @('-v')
    if ($npmVersion) {
        Write-Ok "npm detected: $npmVersion"
    } else {
        Write-WarnLine 'npm 命令存在，但版本检查没有成功。'
        Write-InfoLine 'On Windows PowerShell, this is often an execution policy issue.'
        $attention.Add('npm version check')
    }
}
else {
    Write-WarnLine '未找到 npm / npm not found.'
    $missing.Add('npm')
}

Write-Section 'Git'
if (Test-CommandExists 'git') {
    $gitVersion = Get-CommandVersion -Command 'git' -Arguments @('--version')
    Write-Ok "Git detected: $gitVersion"
} else {
    Write-WarnLine '未找到 Git / Git not found.'
    $missing.Add('Git')
}

Write-Section 'Codex'
if (Test-CommandExists 'codex') {
    $codexCheck = Test-CodexRunnable
    if ($codexCheck.Runnable) {
        Write-Ok '检测到 codex 命令，基础运行检查成功。'
        Write-InfoLine ("Check output: " + $codexCheck.Detail)
    } else {
        Write-WarnLine '找到了 codex 命令，但它可能还不能正常运行。'
        Write-InfoLine $codexCheck.Detail
        Write-InfoLine '这常见于安装方式、权限、WindowsApps 路径或系统策略问题。'
        $attention.Add('Codex command run check')
    }
} else {
    Write-WarnLine 'PATH 里没有找到 codex 命令。'
    Write-InfoLine '请先完成基础环境准备，再按当前官方路径安装或登录 Codex。'
    $attention.Add('Codex command')
}

Write-Section '总结 / Summary'
if ($missing.Count -eq 0 -and $attention.Count -eq 0) {
    Write-Ok '基础环境看起来基本就绪。'
} else {
    if ($missing.Count -gt 0) {
        Write-WarnLine ('缺少这些基础项 / Missing basics: ' + ($missing -join ', '))
    }
    if ($attention.Count -gt 0) {
        Write-WarnLine ('还需要处理 / Needs attention: ' + ($attention -join ', '))
    }
}

Write-Host ''
Write-Host '下一步 / Next steps:' -ForegroundColor Cyan
Write-Host '1. 如果缺少基础项，请先从官方或可信来源安装。'
Write-Host '2. 打开 README.md，按小白路线继续。'
Write-Host '3. 如果检查失败，打开 docs/05-troubleshooting.md。'
Write-Host '4. 如果 Codex 已能打开，去 docs/03-first-prompts.md 复制一个小任务试试。'

Write-Host ''
Write-Host '官方入口 / Official entry points:' -ForegroundColor Cyan
Write-Host '- Codex home: https://chatgpt.com/codex/'
Write-Host '- Codex Quickstart: https://developers.openai.com/codex/quickstart'
Write-Host '- Codex Windows documentation: https://developers.openai.com/codex/app/windows'
Write-Host '- Codex troubleshooting: https://developers.openai.com/codex/app/troubleshooting'

Write-Host ''
Write-Host '课程文件 / Repo files:' -ForegroundColor Cyan
Write-Host '- README.md'
Write-Host '- docs/02-first-run.md'
Write-Host '- docs/03-first-prompts.md'
Write-Host '- docs/05-troubleshooting.md'
