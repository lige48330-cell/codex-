Write-Host 'Notice: install-codex.ps1 is now a compatibility wrapper.' -ForegroundColor Yellow
Write-Host 'Forwarding to check-codex-env.ps1 ...' -ForegroundColor Yellow
& "$PSScriptRoot\check-codex-env.ps1"
