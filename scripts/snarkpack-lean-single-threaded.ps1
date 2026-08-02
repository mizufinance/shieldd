#Requires -Version 5.1
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string] $Lake,

    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]] $LakeArguments
)

$ErrorActionPreference = "Stop"
$env:LEAN_NUM_THREADS = "1"
& $Lake @LakeArguments
exit $LASTEXITCODE
