Write-Host '提示：install-codex.ps1 只是兼容旧文件名，不是安装器。' -ForegroundColor Yellow
Write-Host 'Notice: install-codex.ps1 is a compatibility wrapper, not an installer.' -ForegroundColor Yellow
Write-Host '正在转到 check-codex-env.ps1 做环境检查 ...' -ForegroundColor Yellow
& "$PSScriptRoot\check-codex-env.ps1"
