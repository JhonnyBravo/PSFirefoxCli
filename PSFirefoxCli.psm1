<#
.SYNOPSIS
Firefox がインストールされているフォルダーのパスを返します。
#>
function Get-FirefoxPath(){
    if(Test-Path "${env:ProgramFiles}/Mozilla Firefox"){
        $FirefoxPath=Resolve-Path "${env:ProgramFiles}/Mozilla Firefox"
    }elseif(Test-Path "${env:ProgramFiles(x86)}/Mozilla Firefox"){
        $FirefoxPath=Resolve-Path "${env:ProgramFiles(x86)}/Mozilla Firefox"
    }

    return $FirefoxPath
}

<#
.SYNOPSIS
環境変数 Path へ Firefox がインストールされているフォルダーのパスを追加します。
#>
function Set-FirefoxPath(){
    $FirefoxPath=Get-FirefoxPath
    $env:Path="${env:Path}${FirefoxPath};"
}