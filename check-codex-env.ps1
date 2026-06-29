$ErrorActionPreference = 'Stop'

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

Write-Host 'Codex Environment Checker' -ForegroundColor Magenta
Write-Host 'This script checks your environment first.' -ForegroundColor Gray
Write-Host 'It does not pretend to fully install everything for you.' -ForegroundColor Gray
Write-Host 'Current automation is designed for Windows + PowerShell.' -ForegroundColor Gray

$missing = New-Object 'System.Collections.Generic.List[string]'

Write-Section 'Support Scope'
Write-InfoLine 'Automation in this repo currently targets Windows.'
Write-InfoLine 'If you use macOS or Linux, go to the official Quickstart first.'

Write-Section 'PowerShell'
$psVersion = $PSVersionTable.PSVersion.ToString()
Write-Ok "PowerShell version: $psVersion"

Write-Section 'Node.js'
if (Test-CommandExists 'node') {
    $nodeVersion = Get-CommandVersion -Command 'node' -Arguments @('-v')
    Write-Ok "Node.js detected: $nodeVersion"
} else {
    Write-WarnLine 'Node.js not found.'
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
        Write-WarnLine 'npm command exists, but version check did not succeed.'
        Write-InfoLine 'On Windows PowerShell, this is often an execution policy issue.'
    }
}
else {
    Write-WarnLine 'npm not found.'
    $missing.Add('npm')
}

Write-Section 'Git'
if (Test-CommandExists 'git') {
    $gitVersion = Get-CommandVersion -Command 'git' -Arguments @('--version')
    Write-Ok "Git detected: $gitVersion"
} else {
    Write-WarnLine 'Git not found.'
    $missing.Add('Git')
}

Write-Section 'Codex'
if (Test-CommandExists 'codex') {
    $codexCheck = Test-CodexRunnable
    if ($codexCheck.Runnable) {
        Write-Ok 'codex command detected and basic run check succeeded.'
        Write-InfoLine ("Check output: " + $codexCheck.Detail)
    } else {
        Write-WarnLine 'codex command was found, but it may not actually run correctly.'
        Write-InfoLine $codexCheck.Detail
        Write-InfoLine 'This is often related to install mode, permissions, WindowsApps path, or system policy.'
    }
} else {
    Write-WarnLine 'No codex command found in PATH.'
    Write-InfoLine 'Finish the basic environment setup, then follow the current official install path.'
}

Write-Section 'Summary'
if ($missing.Count -eq 0) {
    Write-Ok 'Basic environment looks mostly ready.'
} else {
    Write-WarnLine ('Missing basics: ' + ($missing -join ', '))
}

Write-Host ''
Write-Host 'Next steps:' -ForegroundColor Cyan
Write-Host '1. Install any missing basics first.'
Write-Host '2. Open first-run-guide.md and follow the first-run path.'
Write-Host '3. Learn CC Switch and API setup early.'
Write-Host '4. Start with a small task, not a big project.'

Write-Host ''
Write-Host 'Official entry points:' -ForegroundColor Cyan
Write-Host '- Codex home: https://chatgpt.com/codex/'
Write-Host '- Codex Quickstart: https://developers.openai.com/codex/quickstart'
Write-Host '- Codex Windows docs: https://developers.openai.com/codex/app/windows'
Write-Host '- Codex troubleshooting: https://developers.openai.com/codex/app/troubleshooting'

Write-Host ''
Write-Host 'Repo files:' -ForegroundColor Cyan
Write-Host '- README.md'
Write-Host '- first-run-guide.md'
Write-Host '- PROMPTS.md'
