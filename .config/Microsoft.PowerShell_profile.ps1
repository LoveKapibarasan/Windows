

function Start-SSHAgent {
    # Start the ssh-agent service
    $agentStatus = Get-Service ssh-agent -ErrorAction SilentlyContinue

    if ($agentStatus.Status -ne 'Running') {
        Start-Service ssh-agent
    }

    # Define the key path
    $keyPath = Join-Path $env:USERPROFILE ".ssh\id_ed25519"

    # Check if key exists and add it
    if (Test-Path $keyPath) {
        ssh-add $keyPath
    } else {
        Write-Host "SSH key not found at: $keyPath" -ForegroundColor Red
    }
}

function rand {
    param(
        [Parameter(Mandatory = $true)]
        [int]$Length,  # 生成する文字数

        [Parameter(Mandatory = $false)]
        [bool]$AlphaNumOnly = $true  # 英数字のみかどうか（デフォルト: 英数字のみ）
    )

    # 使用する文字セットを定義
    if ($AlphaNumOnly) {
        $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    } else {
        $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{};:,.<>/?'
    }

    # ランダム文字列を生成
    $rand = -join ((1..$Length) | ForEach-Object { $chars[(Get-Random -Maximum $chars.Length)] })
    return $rand
}

function gpl {
    param(
        [string]$message = "Auto Commit"
    )

    Write-Host "=== Step 0: Add, Commit ===" -ForegroundColor Cyan
    git add .
    git commit -m $message

    Write-Host "`n=== Step 1: Pull from upstream ===" -ForegroundColor Cyan
    git pull upstream

    Write-Host "`n=== Step 2: Pull and Push origin main ===" -ForegroundColor Cyan
    git pull --no-rebase origin main
    git push origin main

    Write-Host "`n=== Complete! ===" -ForegroundColor Green
}
