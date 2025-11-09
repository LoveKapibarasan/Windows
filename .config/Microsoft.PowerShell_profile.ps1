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
