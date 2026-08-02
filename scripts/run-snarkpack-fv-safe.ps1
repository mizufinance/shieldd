#Requires -Version 5.1
<#
.SYNOPSIS
Runs one bounded SnarkPack FV lane and fails closed on memory or monitoring loss.
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("lean", "rust", "extract")]
    [string] $Lane,

    [Parameter(Mandatory = $true)]
    [ValidateLength(1, 200)]
    [string] $Target,

    [ValidateLength(1, 260)]
    [string] $CargoManifest =
        "crates/crypto/proof-aggregation/Cargo.toml",

    [switch] $RecoverStaleLock,

    [switch] $ClearQuarantine
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$GiB = [uint64] (1024 * 1024 * 1024)
$MinimumLaunchMemory = 8 * $GiB
$MinimumRunningMemory = 4 * $GiB
$MaximumProcessTreeRss = 6 * $GiB
$PollSeconds = 5
$CimTimeoutSeconds = 5
$HelperTimeoutSeconds = 30
$PipeDrainTimeoutSeconds = 10
$TerminationTimeoutSeconds = 10
$WslTerminationTimeoutSeconds = 20
$WslControlTimeoutSeconds = 15
$LaneTimeoutSeconds = @{
    lean = 15 * 60
    rust = 15 * 60
    extract = 20 * 60
}

$RepoRoot = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$TempRoot = Join-Path $RepoRoot "tmp\snarkpack-fv-safe"
$LockDirectory = Join-Path $RepoRoot "tmp\snarkpack-fv-safe.lock"
$LockOwner = Join-Path $LockDirectory "owner.json"
$SafeTarget = $null
$TargetHash = $null
$QuarantineFile = $null
$LeanRoot = Join-Path $RepoRoot `
    "crates\crypto\proof-aggregation\formal\lean-ipp"
$ExtractionScript = Join-Path $LeanRoot "scripts\extractions.py"
$ExtractionManifestRelative = (
    "crates/crypto/proof-aggregation/formal/snarkpack/" +
    "lean-extraction-manifest.json"
)
$ExtractionManifest = Join-Path $RepoRoot (
    $ExtractionManifestRelative.Replace("/", "\")
)
$SourceFingerprintScheme = "snarkpack-fv-files-v2"
$SourcePathSpecs = @(
    "crates/crypto/proof-aggregation",
    "scripts/run-snarkpack-fv-safe.ps1",
    "scripts/snarkpack-*.sh",
    "scripts/snarkpack-lean-single-threaded.ps1",
    "scripts/check-snarkpack*",
    "scripts/ci/gate-applicability.py",
    "scripts/ci/test_gate_applicability.py",
    "ci/gates/snarkpack-formal.json",
    ".github/workflows/formal.yml",
    ".github/workflows/formal-scheduled.yml",
    ".github/workflows/snarkpack-fv-toolchain-image.yml",
    ".github/actions/setup-nix-rust",
    "Cargo.toml",
    "Cargo.lock",
    ".cargo/config.toml",
    "flake.nix",
    "flake.lock",
    "rust-toolchain*",
    "justfile"
)
$RequiredSourceFiles = @(
    "crates/crypto/proof-aggregation/Cargo.toml",
    "scripts/run-snarkpack-fv-safe.ps1",
    "scripts/snarkpack-formal.sh",
    "scripts/snarkpack-fv.sh",
    "scripts/snarkpack-lean-single-threaded.ps1",
    "scripts/check-snarkpack-invariants.sh",
    "scripts/check-snarkpack-runtime-invariants.sh",
    "scripts/ci/gate-applicability.py",
    "scripts/ci/test_gate_applicability.py",
    "ci/gates/snarkpack-formal.json",
    ".github/workflows/formal.yml",
    ".github/workflows/formal-scheduled.yml",
    ".github/workflows/snarkpack-fv-toolchain-image.yml",
    ".github/actions/setup-nix-rust/action.yml",
    "Cargo.toml",
    "Cargo.lock",
    ".cargo/config.toml",
    "flake.nix",
    "flake.lock",
    "rust-toolchain.toml",
    "justfile"
)

function Assert-WithinRepo {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path
    )
    $resolved = [IO.Path]::GetFullPath($Path)
    $prefix = $RepoRoot.TrimEnd(
        [IO.Path]::DirectorySeparatorChar,
        [IO.Path]::AltDirectorySeparatorChar
    ) + [IO.Path]::DirectorySeparatorChar
    $isRoot = $resolved.Equals(
        $RepoRoot,
        [StringComparison]::OrdinalIgnoreCase
    )
    if (-not $isRoot -and -not $resolved.StartsWith(
            $prefix,
            [StringComparison]::OrdinalIgnoreCase
        )) {
        throw "path escapes repository: $resolved"
    }
    return $resolved
}

function Assert-ValidTargetValue {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet("lean", "rust", "extract")]
        [string] $LaneValue,
        [Parameter(Mandatory = $true)]
        [string] $TargetValue
    )
    if ($TargetValue.StartsWith("-", [StringComparison]::Ordinal)) {
        throw "target must not begin with '-': $TargetValue"
    }
    $valid = switch ($LaneValue) {
        "lean" {
            $TargetValue -match (
                "^[A-Za-z_][A-Za-z0-9_]*" +
                "(\.[A-Za-z_][A-Za-z0-9_]*)*$"
            )
        }
        "rust" {
            $TargetValue -match "^[A-Za-z0-9_][A-Za-z0-9_.:-]*$"
        }
        "extract" {
            $TargetValue -match "^[A-Za-z][A-Za-z0-9_]*$"
        }
    }
    if (-not $valid) {
        throw (
            "$LaneValue target has an unsafe or unsupported form: " +
            $TargetValue
        )
    }
}

function Assert-ValidTarget {
    Assert-ValidTargetValue -LaneValue $Lane -TargetValue $Target
}

function Get-SafeTargetName {
    param(
        [Parameter(Mandatory = $true)]
        [string] $TargetValue
    )
    $targetDigest = Get-TextSha256 -Value $TargetValue
    $stem = $TargetValue -replace "[^A-Za-z0-9_.-]", "_"
    if ($stem.Length -gt 32) {
        $stem = $stem.Substring(0, 32)
    }
    return "$stem-$targetDigest"
}

function Test-ReparsePoint {
    param(
        [Parameter(Mandatory = $true)]
        [IO.FileSystemInfo] $Item
    )
    return (
        $Item.Attributes -band [IO.FileAttributes]::ReparsePoint
    ) -ne 0
}

function Assert-SafeExistingPath {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [ValidateSet("Leaf", "Directory")]
        [string] $Kind
    )
    $resolved = Assert-WithinRepo -Path $Path
    $repoItem = Get-Item -LiteralPath $RepoRoot -Force -ErrorAction Stop
    if (-not $repoItem.PSIsContainer -or (Test-ReparsePoint $repoItem)) {
        throw "repository root is not a plain directory: $RepoRoot"
    }
    $relative = $resolved.Substring($RepoRoot.Length).TrimStart(
        [IO.Path]::DirectorySeparatorChar,
        [IO.Path]::AltDirectorySeparatorChar
    )
    $parts = $relative.Split(
        [char[]] @(
            [IO.Path]::DirectorySeparatorChar,
            [IO.Path]::AltDirectorySeparatorChar
        ),
        [StringSplitOptions]::RemoveEmptyEntries
    )
    $current = $RepoRoot
    $item = $repoItem
    foreach ($part in $parts) {
        $current = Join-Path $current $part
        $item = Get-Item -LiteralPath $current -Force -ErrorAction Stop
        if (Test-ReparsePoint $item) {
            throw "path contains a reparse point: $current"
        }
    }
    if ($Kind -eq "Leaf" -and $item.PSIsContainer) {
        throw "expected a plain file, found a directory: $resolved"
    }
    if ($Kind -eq "Directory" -and -not $item.PSIsContainer) {
        throw "expected a directory, found a file: $resolved"
    }
    return $item
}

function Get-SafeLeaf {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [switch] $AllowMissing
    )
    $resolved = Assert-WithinRepo -Path $Path
    $parent = Split-Path -Parent $resolved
    $null = Assert-SafeExistingPath -Path $parent -Kind Directory
    $item = Get-Item -LiteralPath $resolved -Force -ErrorAction SilentlyContinue
    if ($null -eq $item) {
        if (Test-Path -LiteralPath $resolved) {
            throw "path exists but cannot be inspected safely: $resolved"
        }
        if ($AllowMissing) {
            return $null
        }
        throw "required file is missing: $resolved"
    }
    if ($item.PSIsContainer -or (Test-ReparsePoint $item)) {
        throw "expected a plain non-reparse file: $resolved"
    }
    return $item
}

function Ensure-SafeDirectory {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path
    )
    $resolved = Assert-WithinRepo -Path $Path
    $parent = Split-Path -Parent $resolved
    if ($parent.Equals(
        $RepoRoot,
        [StringComparison]::OrdinalIgnoreCase
    )) {
        $repoItem = Get-Item -LiteralPath $RepoRoot -Force -ErrorAction Stop
        if (-not $repoItem.PSIsContainer -or (Test-ReparsePoint $repoItem)) {
            throw "repository root is not a plain directory: $RepoRoot"
        }
    }
    else {
        $null = Assert-SafeExistingPath -Path $parent -Kind Directory
    }
    if (-not (Test-Path -LiteralPath $resolved)) {
        $null = [IO.Directory]::CreateDirectory($resolved)
    }
    $null = Assert-SafeExistingPath -Path $resolved -Kind Directory
}

function Write-AtomicText {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $true)]
        [string] $Content
    )
    $resolved = Assert-WithinRepo -Path $Path
    $parent = Split-Path -Parent $resolved
    $null = Assert-SafeExistingPath -Path $parent -Kind Directory
    $existing = Get-SafeLeaf -Path $resolved -AllowMissing
    $temporary = Join-Path $parent (
        ".$([IO.Path]::GetFileName($resolved))." +
        "$([Guid]::NewGuid().ToString('N')).tmp"
    )
    $backup = Join-Path $parent (
        ".$([IO.Path]::GetFileName($resolved))." +
        "$([Guid]::NewGuid().ToString('N')).bak"
    )
    $stream = $null
    try {
        $bytes = [Text.UTF8Encoding]::new($false).GetBytes($Content)
        $stream = [IO.FileStream]::new(
            $temporary,
            [IO.FileMode]::CreateNew,
            [IO.FileAccess]::Write,
            [IO.FileShare]::None,
            4096,
            [IO.FileOptions]::WriteThrough
        )
        $stream.Write($bytes, 0, $bytes.Length)
        $stream.Flush($true)
        $stream.Dispose()
        $stream = $null
        if ($null -eq $existing) {
            try {
                [IO.File]::Move($temporary, $resolved)
            }
            catch [IO.IOException] {
                $null = Get-SafeLeaf -Path $resolved
                [IO.File]::Replace($temporary, $resolved, $backup)
            }
        }
        else {
            [IO.File]::Replace($temporary, $resolved, $backup)
        }
        $null = Get-SafeLeaf -Path $resolved
    }
    finally {
        if ($null -ne $stream) {
            $stream.Dispose()
        }
        if (Test-Path -LiteralPath $temporary) {
            Remove-Item -LiteralPath $temporary -Force
        }
        if (Test-Path -LiteralPath $backup) {
            Remove-Item -LiteralPath $backup -Force
        }
    }
}

function Write-AtomicJson {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $true)]
        [object] $Value
    )
    Write-AtomicText -Path $Path -Content (
        ($Value | ConvertTo-Json -Depth 6) + [Environment]::NewLine
    )
}

function Wait-TaskBounded {
    param(
        [Parameter(Mandatory = $true)]
        [Threading.Tasks.Task] $Task,
        [Parameter(Mandatory = $true)]
        [string] $Label,
        [int] $TimeoutSeconds = $PipeDrainTimeoutSeconds
    )
    try {
        $completed = $Task.Wait($TimeoutSeconds * 1000)
    }
    catch {
        throw "$Label failed: $($_.Exception.GetBaseException().Message)"
    }
    if (-not $completed) {
        throw "$Label exceeded $TimeoutSeconds seconds"
    }
    try {
        $null = $Task.GetAwaiter().GetResult()
    }
    catch {
        throw "$Label failed: $($_.Exception.Message)"
    }
}

function ConvertTo-Hex {
    param(
        [Parameter(Mandatory = $true)]
        [byte[]] $Bytes
    )
    return ([BitConverter]::ToString($Bytes)).Replace(
        "-",
        ""
    ).ToLowerInvariant()
}

function Get-TextSha256 {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Value
    )
    $hasher = [Security.Cryptography.SHA256]::Create()
    try {
        $bytes = [Text.UTF8Encoding]::new($false).GetBytes($Value)
        return ConvertTo-Hex -Bytes $hasher.ComputeHash($bytes)
    }
    finally {
        $hasher.Dispose()
    }
}

function New-GitStartInfo {
    param(
        [Parameter(Mandatory = $true)]
        [string[]] $Arguments
    )
    $tokens = @($Arguments | ForEach-Object {
        ConvertTo-WindowsArgument -Value $_
    })
    $startInfo = [Diagnostics.ProcessStartInfo]::new()
    $startInfo.FileName = "git.exe"
    $startInfo.Arguments = $tokens -join " "
    $startInfo.WorkingDirectory = $RepoRoot
    $startInfo.CreateNoWindow = $true
    $startInfo.UseShellExecute = $false
    $startInfo.WindowStyle = [Diagnostics.ProcessWindowStyle]::Hidden
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    return $startInfo
}

function Stop-HelperProcess {
    param(
        [Parameter(Mandatory = $true)]
        [Diagnostics.Process] $Process,
        [Parameter(Mandatory = $true)]
        [string] $Label
    )
    try {
        $Process.Refresh()
        if ($Process.HasExited) {
            return
        }
        $Process.Kill()
    }
    catch [InvalidOperationException] {
        $Process.Refresh()
        if ($Process.HasExited) {
            return
        }
        throw "failed to terminate $Label process $($Process.Id)"
    }
    catch {
        throw "failed to terminate $Label process $($Process.Id)"
    }
    if (-not $Process.WaitForExit($TerminationTimeoutSeconds * 1000)) {
        throw "$Label process $($Process.Id) did not terminate"
    }
}

function Invoke-StartInfoCapture {
    param(
        [Parameter(Mandatory = $true)]
        [Diagnostics.ProcessStartInfo] $StartInfo,
        [Parameter(Mandatory = $true)]
        [string] $Label,
        [int] $TimeoutSeconds = $HelperTimeoutSeconds
    )
    $process = [Diagnostics.Process]::new()
    $stdout = [IO.MemoryStream]::new()
    $stderr = [IO.MemoryStream]::new()
    $started = $false
    $stdoutCopy = $null
    $stderrCopy = $null
    $process.StartInfo = $StartInfo
    try {
        if (-not $process.Start()) {
            throw "failed to start $Label"
        }
        $started = $true
        $stdoutCopy = $process.StandardOutput.BaseStream.CopyToAsync($stdout)
        $stderrCopy = $process.StandardError.BaseStream.CopyToAsync($stderr)
        if (-not $process.WaitForExit($TimeoutSeconds * 1000)) {
            Stop-HelperProcess -Process $process -Label $Label
            throw "$Label exceeded $TimeoutSeconds seconds"
        }
        Wait-TaskBounded -Task $stdoutCopy -Label "$Label stdout"
        Wait-TaskBounded -Task $stderrCopy -Label "$Label stderr"
        $process.Refresh()
        return [pscustomobject] @{
            ExitCode = [int] $process.ExitCode
            Stdout = $stdout.ToArray()
            Stderr = $stderr.ToArray()
        }
    }
    finally {
        if ($started -and -not $process.HasExited) {
            Stop-HelperProcess -Process $process -Label $Label
        }
        if ($started) {
            try {
                $process.StandardOutput.Close()
                $process.StandardError.Close()
            }
            catch {
                # The process may have closed the redirected handles first.
            }
        }
        $stdout.Dispose()
        $stderr.Dispose()
        $process.Dispose()
    }
}

function Invoke-GitCapture {
    param(
        [Parameter(Mandatory = $true)]
        [string[]] $Arguments
    )
    $result = Invoke-StartInfoCapture `
        -StartInfo (New-GitStartInfo -Arguments $Arguments) `
        -Label "git $($Arguments[0])"
    $stderr = [Text.UTF8Encoding]::new($false).GetString($result.Stderr)
    if ($result.ExitCode -ne 0) {
        throw (
            "git $($Arguments -join ' ') failed with exit code " +
            "$($result.ExitCode): $stderr"
        )
    }
    return [pscustomobject] @{
        Bytes = $result.Stdout
    }
}

function Get-FileSha256 {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path
    )
    $before = Get-Item -LiteralPath $Path -Force -ErrorAction Stop
    if ($before.PSIsContainer) {
        throw "FV source path is not a file: $Path"
    }
    $hasher = [Security.Cryptography.SHA256]::Create()
    $stream = $null
    try {
        $stream = [IO.File]::Open(
            $before.FullName,
            [IO.FileMode]::Open,
            [IO.FileAccess]::Read,
            [IO.FileShare]::Read
        )
        $digest = $hasher.ComputeHash($stream)
    }
    finally {
        if ($null -ne $stream) {
            $stream.Dispose()
        }
        $hasher.Dispose()
    }
    $after = Get-Item -LiteralPath $Path -Force -ErrorAction Stop
    if ($after.PSIsContainer -or
        $before.Length -ne $after.Length -or
        $before.LastWriteTimeUtc -ne $after.LastWriteTimeUtc) {
        throw "FV source changed while it was being read: $Path"
    }
    return ConvertTo-Hex -Bytes $digest
}

function Get-RelevantSourcePaths {
    # Cached and non-ignored untracked files form one content inventory, so
    # staging or committing an unchanged worktree cannot unlock quarantine.
    $utf8 = [Text.UTF8Encoding]::new($false, $true)
    $arguments = [Collections.Generic.List[string]]::new()
    foreach ($argument in @(
        "ls-files",
        "--cached",
        "--others",
        "--exclude-standard",
        "-z",
        "--"
    )) {
        $arguments.Add($argument)
    }
    foreach ($pathSpec in $SourcePathSpecs) {
        $arguments.Add($pathSpec)
    }
    $inventory = Invoke-GitCapture -Arguments $arguments.ToArray()
    $inventoryText = $utf8.GetString($inventory.Bytes)
    $listedPaths = [string[]] $inventoryText.Split(
        [char[]] @([char] 0),
        [StringSplitOptions]::RemoveEmptyEntries
    )
    $existingPaths = [Collections.Generic.HashSet[string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($listedPath in $listedPaths) {
        $relativePath = $listedPath.Replace("\", "/")
        $candidate = Join-Path $RepoRoot $relativePath
        $fullPath = Assert-WithinRepo -Path $candidate
        if (Test-Path -LiteralPath $fullPath -PathType Leaf) {
            $null = $existingPaths.Add($relativePath)
        }
        elseif (Test-Path -LiteralPath $fullPath) {
            throw "FV source inventory contains a non-file: $relativePath"
        }
        # A cached path that is already absent is a tracked deletion. It is
        # excluded so committing that unchanged worktree does not alter the
        # content fingerprint.
    }
    foreach ($requiredPath in $RequiredSourceFiles) {
        if (-not $existingPaths.Contains($requiredPath)) {
            throw "required FV source is missing: $requiredPath"
        }
    }
    if ($existingPaths.Count -eq 0) {
        throw "SnarkPack FV source inventory is empty"
    }
    $paths = [string[]] @($existingPaths)
    [Array]::Sort($paths, [StringComparer]::Ordinal)
    return $paths
}

function Get-SourceFingerprintSnapshot {
    param(
        [string[]] $ExcludedPaths = @(),
        [Collections.IDictionary] $VirtualComponents
    )
    $utf8 = [Text.UTF8Encoding]::new($false, $true)
    $paths = @(Get-RelevantSourcePaths)
    $exclusions = [Collections.Generic.HashSet[string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($excludedPath in $ExcludedPaths) {
        if ([String]::IsNullOrWhiteSpace($excludedPath) -or
            $excludedPath.Contains("\") -or
            $excludedPath.StartsWith("/", [StringComparison]::Ordinal) -or
            $excludedPath.Split("/") -contains "..") {
            throw "source-fingerprint exclusion is not canonical"
        }
        $null = $exclusions.Add($excludedPath)
    }
    $components = [Text.StringBuilder]::new()
    $null = $components.AppendLine($SourceFingerprintScheme)
    if ($null -ne $VirtualComponents) {
        $virtualNames = [string[]] @($VirtualComponents.Keys)
        [Array]::Sort($virtualNames, [StringComparer]::Ordinal)
        foreach ($virtualName in $virtualNames) {
            $virtualValue = [string] $VirtualComponents[$virtualName]
            if ([String]::IsNullOrWhiteSpace($virtualName) -or
                $virtualValue -notmatch "^[0-9a-f]{64}$") {
                throw "virtual source component is invalid: $virtualName"
            }
            $nameToken = [Convert]::ToBase64String(
                $utf8.GetBytes("virtual:$virtualName")
            )
            $null = $components.Append($nameToken)
            $null = $components.Append(":")
            $null = $components.AppendLine($virtualValue)
        }
    }
    $digests = [Collections.Generic.Dictionary[string, string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($relativePath in $paths) {
        if ($exclusions.Contains($relativePath)) {
            continue
        }
        $candidate = Join-Path $RepoRoot $relativePath
        $fullPath = Assert-WithinRepo -Path $candidate
        if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
            throw "FV source disappeared before hashing: $relativePath"
        }
        $pathBytes = $utf8.GetBytes($relativePath)
        $pathToken = [Convert]::ToBase64String($pathBytes)
        $fileDigest = Get-FileSha256 -Path $fullPath
        $digests.Add($relativePath, $fileDigest)
        $null = $components.Append($pathToken)
        $null = $components.Append(":")
        $null = $components.AppendLine($fileDigest)
    }
    return [pscustomobject] @{
        Fingerprint = Get-TextSha256 -Value $components.ToString()
        FileCount = $digests.Count
        Digests = $digests
    }
}

function Get-StableSourceSnapshot {
    param(
        [string[]] $ExcludedPaths = @(),
        [Collections.IDictionary] $VirtualComponents
    )
    $first = Get-SourceFingerprintSnapshot `
        -ExcludedPaths $ExcludedPaths `
        -VirtualComponents $VirtualComponents
    $second = Get-SourceFingerprintSnapshot `
        -ExcludedPaths $ExcludedPaths `
        -VirtualComponents $VirtualComponents
    if ([string] $first.Fingerprint -cne [string] $second.Fingerprint -or
        [int] $first.FileCount -ne [int] $second.FileCount) {
        throw "SnarkPack FV source changed during fingerprinting"
    }
    return $second
}

function Get-SourceFingerprint {
    return [string] (Get-StableSourceSnapshot).Fingerprint
}

function Get-SourceSnapshotChanges {
    param(
        [Parameter(Mandatory = $true)]
        [pscustomobject] $Before,
        [Parameter(Mandatory = $true)]
        [pscustomobject] $After
    )
    $allPaths = [Collections.Generic.HashSet[string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($path in $Before.Digests.Keys) {
        $null = $allPaths.Add([string] $path)
    }
    foreach ($path in $After.Digests.Keys) {
        $null = $allPaths.Add([string] $path)
    }
    $changed = [Collections.Generic.List[string]]::new()
    foreach ($path in $allPaths) {
        $beforeDigest = if ($Before.Digests.ContainsKey($path)) {
            [string] $Before.Digests[$path]
        }
        else {
            $null
        }
        $afterDigest = if ($After.Digests.ContainsKey($path)) {
            [string] $After.Digests[$path]
        }
        else {
            $null
        }
        if ($beforeDigest -cne $afterDigest) {
            $changed.Add($path)
        }
    }
    $result = $changed.ToArray()
    [Array]::Sort($result, [StringComparer]::Ordinal)
    return $result
}

function Assert-FreezePathCovered {
    param(
        [Parameter(Mandatory = $true)]
        [string] $RelativePath,
        [Parameter(Mandatory = $true)]
        [Collections.Generic.HashSet[string]] $Inventory
    )
    if ([String]::IsNullOrWhiteSpace($RelativePath) -or
        $RelativePath.Contains("\") -or
        $RelativePath.StartsWith("/", [StringComparison]::Ordinal) -or
        $RelativePath.Split("/") -contains "" -or
        $RelativePath.Split("/") -contains "." -or
        $RelativePath.Split("/") -contains "..") {
        throw "extraction freeze path is not canonical: $RelativePath"
    }
    $fullPath = Assert-WithinRepo -Path (
        Join-Path $RepoRoot $RelativePath
    )
    $null = Get-SafeLeaf -Path $fullPath
    if (-not $Inventory.Contains($RelativePath)) {
        throw "extraction freeze inventory omits $RelativePath"
    }
}

function Get-ExtractionFreezeDefinition {
    $manifestItem = Get-SafeLeaf -Path $ExtractionManifest
    try {
        $manifest = Get-Content -Raw -LiteralPath $manifestItem.FullName |
            ConvertFrom-Json
    }
    catch {
        throw "extraction manifest is invalid: $($_.Exception.Message)"
    }
    foreach ($field in @("schema_version", "toolchains", "graphs")) {
        if ($null -eq $manifest.PSObject.Properties[$field]) {
            throw "extraction manifest lacks $field"
        }
    }
    $selected = @($manifest.graphs | Where-Object {
        [string] $_.id -ceq $Target
    })
    if ($selected.Count -ne 1) {
        throw "extraction manifest must contain exactly one $Target graph"
    }
    $graph = $selected[0]
    foreach ($field in @(
        "output",
        "output_sha256",
        "crate_manifest",
        "inputs",
        "normalization"
    )) {
        if ($null -eq $graph.PSObject.Properties[$field]) {
            throw "extraction graph $Target lacks $field"
        }
    }
    $outputPath = [string] $graph.output
    if ($outputPath -cnotmatch (
        "^crates/crypto/proof-aggregation/formal/lean-ipp/" +
        "Ipp/Extracted/[A-Za-z0-9_]+Generated\.lean$"
    )) {
        throw "extraction graph $Target has an unsafe output path"
    }

    $inventory = [Collections.Generic.HashSet[string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($path in @(Get-RelevantSourcePaths)) {
        $null = $inventory.Add([string] $path)
    }
    $requiredPaths = [Collections.Generic.HashSet[string]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($path in @(
        "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py",
        (
            "crates/crypto/proof-aggregation/formal/lean-ipp/" +
            "Ipp/Extracted/AeneasRuntime.lean"
        ),
        ".cargo/config.toml",
        "Cargo.lock",
        "Cargo.toml",
        "rust-toolchain.toml",
        (
            "crates/crypto/proof-aggregation/formal/lean-ipp/" +
            "lake-manifest.json"
        ),
        "crates/crypto/proof-aggregation/formal/lean-ipp/lakefile.lean",
        "crates/crypto/proof-aggregation/formal/lean-ipp/lean-toolchain",
        [string] $graph.crate_manifest,
        [string] $graph.normalization.script
    )) {
        $null = $requiredPaths.Add($path)
    }
    foreach ($input in @($graph.inputs)) {
        if ($null -eq $input.PSObject.Properties["path"]) {
            throw "extraction graph $Target has an input without a path"
        }
        $null = $requiredPaths.Add([string] $input.path)
    }
    foreach ($module in @($graph.normalization.reuse_modules)) {
        $moduleName = [string] $module
        if ($moduleName -notmatch (
            "^[A-Za-z_][A-Za-z0-9_]*" +
            "(\.[A-Za-z_][A-Za-z0-9_]*)*$"
        )) {
            throw "extraction graph $Target has an unsafe reuse module"
        }
        $modulePath = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/" +
            $moduleName.Replace(".", "/") +
            ".lean"
        )
        $null = $requiredPaths.Add($modulePath)
    }
    foreach ($path in $requiredPaths) {
        Assert-FreezePathCovered -RelativePath $path -Inventory $inventory
        if ($path -ceq $outputPath -or
            $path -ceq $ExtractionManifestRelative) {
            throw "mutable extraction result is also a declared freeze input"
        }
    }
    Assert-FreezePathCovered -RelativePath $outputPath -Inventory $inventory
    Assert-FreezePathCovered `
        -RelativePath $ExtractionManifestRelative `
        -Inventory $inventory

    if ($null -ne $graph.PSObject.Properties["source_sha256"]) {
        $graph.PSObject.Properties.Remove("source_sha256")
    }
    $graph.PSObject.Properties.Remove("output_sha256")
    foreach ($input in @($graph.inputs)) {
        if ($null -ne $input.PSObject.Properties["sha256"]) {
            $input.PSObject.Properties.Remove("sha256")
        }
    }
    foreach ($field in @(
        "selected_raw_declarations_sha256",
        "normalized_sha256"
    )) {
        if ($null -ne $graph.normalization.PSObject.Properties[$field]) {
            $graph.normalization.PSObject.Properties.Remove($field)
        }
    }
    $contract = $manifest | ConvertTo-Json -Depth 30 -Compress
    return [pscustomobject] @{
        ContractDigest = Get-TextSha256 -Value $contract
        OutputPath = $outputPath
        ExcludedPaths = @($outputPath, $ExtractionManifestRelative)
    }
}

function Get-ExtractionFreezeSnapshot {
    $definition = Get-ExtractionFreezeDefinition
    $virtual = [ordered] @{
        "extraction-manifest-contract:$Target" =
            [string] $definition.ContractDigest
    }
    $snapshot = Get-StableSourceSnapshot `
        -ExcludedPaths $definition.ExcludedPaths `
        -VirtualComponents $virtual
    $confirmation = Get-ExtractionFreezeDefinition
    if ([string] $confirmation.ContractDigest -cne
            [string] $definition.ContractDigest -or
        [string] $confirmation.OutputPath -cne
            [string] $definition.OutputPath) {
        throw "extraction manifest changed during freeze fingerprinting"
    }
    return [pscustomobject] @{
        Fingerprint = [string] $snapshot.Fingerprint
        OutputPath = [string] $definition.OutputPath
        ManifestPath = $ExtractionManifestRelative
    }
}

function Get-RunnerSessionFingerprint {
    $threadId = [Environment]::GetEnvironmentVariable(
        "CODEX_THREAD_ID",
        "Process"
    )
    if (-not [String]::IsNullOrWhiteSpace($threadId)) {
        $sessionKind = "codex-thread:$threadId"
    }
    else {
        $explicitNonce = [Environment]::GetEnvironmentVariable(
            "SNARKPACK_FV_SESSION_NONCE",
            "Process"
        )
        if (-not [String]::IsNullOrWhiteSpace($explicitNonce)) {
            if ($explicitNonce -notmatch "^[A-Za-z0-9_-]{32,128}$") {
                throw "SNARKPACK_FV_SESSION_NONCE has an invalid form"
            }
            $sessionKind = "explicit:$explicitNonce"
        }
        else {
            $terminalId = [Environment]::GetEnvironmentVariable(
                "WT_SESSION",
                "Process"
            )
            if (-not [String]::IsNullOrWhiteSpace($terminalId)) {
                $sessionKind = "windows-terminal:$terminalId"
            }
            else {
                $sessionKind = $null
            }
        }
    }

    try {
        $operatingSystem = Get-CimInstance `
            -ClassName Win32_OperatingSystem `
            -OperationTimeoutSec $CimTimeoutSeconds
        $current = Get-CimInstance `
            -ClassName Win32_Process `
            -Filter "ProcessId = $PID" `
            -OperationTimeoutSec $CimTimeoutSeconds
        if ($null -eq $current) {
            throw "current process was not found"
        }
        if ($null -eq $operatingSystem -or
            $null -eq $operatingSystem.LastBootUpTime) {
            throw "operating-system boot identity was not available"
        }
        if ($null -eq $sessionKind) {
            $sessionKind = "windows-session:$($current.SessionId)"
        }
        $identity = (
            "${sessionKind}:" +
            "boot:$($operatingSystem.LastBootUpTime)"
        )
        return Get-TextSha256 -Value $identity
    }
    catch {
        throw (
            "runner-session identification unavailable: " +
            "$($_.Exception.Message)"
        )
    }
}

function Get-HostFreeMemory {
    try {
        $operatingSystem = Get-CimInstance `
            -ClassName Win32_OperatingSystem `
            -OperationTimeoutSec $CimTimeoutSeconds
        if ($null -eq $operatingSystem -or
            $null -eq $operatingSystem.FreePhysicalMemory) {
            throw "Win32_OperatingSystem did not report FreePhysicalMemory"
        }
        return [uint64] $operatingSystem.FreePhysicalMemory * 1024
    }
    catch {
        throw "host-memory monitoring unavailable: $($_.Exception.Message)"
    }
}

function Get-FvProcesses {
    try {
        $processes = @(
            Get-CimInstance `
                -ClassName Win32_Process `
                -OperationTimeoutSec $CimTimeoutSeconds
        )
    }
    catch {
        throw "process monitoring unavailable: $($_.Exception.Message)"
    }
    return @(
        $processes | Where-Object {
            if ([uint32] $_.ProcessId -eq [uint32] $PID) {
                return $false
            }
            $name = [string] $_.Name
            $commandLine = [string] $_.CommandLine
            return (
                $name -match "^(lake|lean|cargo|rustc|charon)(\.exe)?$" -or
                $name -match "^(cargo-hax|hax)(\.exe)?$" -or
                (
                    $name -match "^(python|python3)(\.exe)?$" -and
                    $commandLine -match "(^|[\\/])extractions\.py(\s|$)"
                ) -or
                (
                    $name -ieq "wsl.exe" -and
                    $commandLine -match "extractions\.py"
                ) -or
                (
                    $name -match "^(powershell|pwsh)(\.exe)?$" -and
                    $commandLine -match "run-snarkpack-fv-safe\.ps1"
                )
            )
        }
    )
}

function Assert-NoFvProcesses {
    $active = @(Get-FvProcesses)
    if ($active.Count -eq 0) {
        return
    }
    $description = ($active | ForEach-Object {
        "$($_.Name)[$($_.ProcessId)]"
    }) -join ", "
    throw "another FV process is active: $description"
}

function Remove-ValidatedLock {
    $resolvedLock = Assert-WithinRepo -Path $LockDirectory
    $expectedLock = [IO.Path]::GetFullPath($LockDirectory)
    if (-not $resolvedLock.Equals(
        $expectedLock,
        [StringComparison]::OrdinalIgnoreCase
    )) {
        throw "refusing to remove unexpected lock path: $resolvedLock"
    }
    $null = Assert-SafeExistingPath -Path $resolvedLock -Kind Directory
    $entries = @(Get-ChildItem -LiteralPath $resolvedLock -Force)
    $unexpected = @($entries | Where-Object { $_.Name -ne "owner.json" })
    if ($unexpected.Count -ne 0) {
        throw "lock directory contains unexpected files"
    }
    if (Test-Path -LiteralPath $LockOwner) {
        $null = Get-SafeLeaf -Path $LockOwner
        Remove-Item -LiteralPath $LockOwner -Force
    }
    Remove-Item -LiteralPath $resolvedLock -Force
}

function Read-LockOwner {
    $null = Get-SafeLeaf -Path $LockOwner
    try {
        $owner = Get-Content -Raw -LiteralPath $LockOwner |
            ConvertFrom-Json
    }
    catch {
        throw "FV lock owner record is invalid: $($_.Exception.Message)"
    }
    foreach ($field in @(
        "schema",
        "runner_pid",
        "runner_identity",
        "child_pid",
        "child_identity",
        "lane",
        "target",
        "run_id",
        "state",
        "quarantine_path",
        "wsl_control",
        "source_fingerprint_scheme",
        "source_fingerprint",
        "session_fingerprint"
    )) {
        if ($null -eq $owner.PSObject.Properties[$field]) {
            throw "FV lock owner record lacks $field"
        }
    }
    if ([int] $owner.schema -ne 3) {
        throw "unsupported FV lock owner schema: $($owner.schema)"
    }
    if ([string] $owner.state -notin @(
        "preflight",
        "armed",
        "running",
        "watchdog",
        "abnormal"
    )) {
        throw "FV lock owner has an invalid state"
    }
    Assert-ValidTargetValue `
        -LaneValue ([string] $owner.lane) `
        -TargetValue ([string] $owner.target)
    if ([String]::IsNullOrWhiteSpace([string] $owner.run_id)) {
        throw "FV lock owner has no run identity"
    }
    if ([string] $owner.source_fingerprint_scheme -cne
        $SourceFingerprintScheme) {
        throw "FV lock owner uses an unsupported source fingerprint"
    }
    if ([string] $owner.state -ne "preflight") {
        foreach ($field in @(
            "source_fingerprint",
            "session_fingerprint"
        )) {
            if ([string] $owner.$field -notmatch "^[0-9a-f]{64}$") {
                throw "FV lock owner has an invalid $field"
            }
        }
    }
    return $owner
}

function Acquire-FvLock {
    $lockParent = Split-Path $LockDirectory -Parent
    Ensure-SafeDirectory -Path $lockParent
    if (Test-Path -LiteralPath $LockDirectory) {
        $null = Assert-SafeExistingPath `
            -Path $LockDirectory `
            -Kind Directory
        if (-not $RecoverStaleLock) {
            throw (
                "FV lock exists at $LockDirectory; use -RecoverStaleLock only " +
                "after confirming the prior runner is gone"
            )
        }
        if (-not (Test-Path -LiteralPath $LockOwner -PathType Leaf)) {
            throw (
                "FV lock has no readable owner record; refusing automatic " +
                "recovery from $LockDirectory"
            )
        }
        try {
            $owner = Read-LockOwner
            $runnerPid = [int] $owner.runner_pid
            $childPid = if ($null -eq $owner.child_pid) {
                $null
            }
            else {
                [int] $owner.child_pid
            }
        }
        catch {
            throw "FV lock owner record is invalid: $($_.Exception.Message)"
        }
        $activeRunnerIdentity = Get-ProcessIdentity -ProcessId $runnerPid
        if ($null -ne $activeRunnerIdentity -and
            $activeRunnerIdentity -ceq [string] $owner.runner_identity) {
            throw "FV lock owner process $runnerPid is still active"
        }
        if ($null -ne $childPid) {
            $childIdentity = Get-ProcessIdentity -ProcessId $childPid
            if ($null -ne $childIdentity -and
                $childIdentity -ceq [string] $owner.child_identity) {
                throw "FV lock child process $childPid is still active"
            }
        }
        $unsafeState = [string] $owner.state -in @(
            "armed",
            "running",
            "watchdog",
            "abnormal"
        )
        if ($unsafeState) {
            Assert-ValidTargetValue `
                -LaneValue ([string] $owner.lane) `
                -TargetValue ([string] $owner.target)
            $markerPath = Assert-WithinRepo -Path (
                [string] $owner.quarantine_path
            )
            $expectedMarkerPath = [IO.Path]::GetFullPath(
                (Join-Path $TempRoot (
                    "quarantine-$($owner.lane)-" +
                    "$(Get-SafeTargetName -TargetValue $owner.target).json"
                ))
            )
            if (-not $markerPath.Equals(
                $expectedMarkerPath,
                [StringComparison]::OrdinalIgnoreCase
            )) {
                throw "stale FV lock names an unexpected quarantine path"
            }
            $markerItem = Get-SafeLeaf -Path $markerPath
            try {
                $marker = Get-Content -Raw -LiteralPath $markerItem.FullName |
                    ConvertFrom-Json
            }
            catch {
                throw (
                    "stale FV quarantine record is invalid: " +
                    "$($_.Exception.Message)"
                )
            }
            foreach ($field in @(
                "schema",
                "lane",
                "target",
                "run_id",
                "state",
                "source_fingerprint_scheme",
                "source_fingerprint",
                "session_fingerprint",
                "child_pid",
                "child_identity",
                "wsl_control"
            )) {
                if ($null -eq $marker.PSObject.Properties[$field]) {
                    throw "stale FV quarantine record lacks $field"
                }
            }
            if ([int] $marker.schema -ne 4 -or
                [string] $marker.lane -cne [string] $owner.lane -or
                [string] $marker.target -cne [string] $owner.target -or
                [string] $marker.run_id -cne [string] $owner.run_id -or
                [string] $marker.source_fingerprint_scheme -cne
                    [string] $owner.source_fingerprint_scheme -or
                [string] $marker.source_fingerprint -cne
                    [string] $owner.source_fingerprint -or
                [string] $marker.session_fingerprint -cne
                    [string] $owner.session_fingerprint) {
                throw "stale FV lock and quarantine records do not agree"
            }
            if ([string] $marker.state -notin @(
                "armed",
                "running",
                "watchdog",
                "abnormal"
            )) {
                throw "stale FV quarantine record has an invalid state"
            }
            $markerChildPid = if ($null -eq $marker.child_pid) {
                $null
            }
            else {
                [int] $marker.child_pid
            }
            if ($null -ne $markerChildPid) {
                $markerChildIdentity = Get-ProcessIdentity `
                    -ProcessId $markerChildPid
                if ($null -ne $markerChildIdentity -and
                    $markerChildIdentity -ceq
                        [string] $marker.child_identity) {
                    throw (
                        "FV quarantine child process $markerChildPid " +
                        "is still active"
                    )
                }
            }
            if ([string] $owner.lane -eq "extract") {
                if ([string] $marker.wsl_control -cne
                    [string] $owner.wsl_control) {
                    throw "stale extraction ownership records do not agree"
                }
                $controlPath = [string] $marker.wsl_control
                if ([String]::IsNullOrWhiteSpace($controlPath)) {
                    throw "stale extraction lock lacks WSL ownership evidence"
                }
                $control = Read-WslControl -Path $controlPath -AllowMissing
                if ($null -eq $control) {
                    throw "stale extraction lock lacks its WSL control record"
                }
                $usage = Get-WslGroupUsage -Control $control
                if ($usage.Count -ne 0) {
                    throw (
                        "stale extraction WSL group $($control.Pgid) " +
                        "is still active"
                    )
                }
            }
        }
        Assert-NoFvProcesses
        Remove-ValidatedLock
    }
    try {
        New-Item -ItemType Directory -Path $LockDirectory `
            -ErrorAction Stop | Out-Null
    }
    catch {
        throw "another FV runner acquired $LockDirectory"
    }
}

function Write-LockOwner {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet(
            "preflight",
            "armed",
            "running",
            "watchdog",
            "abnormal"
        )]
        [string] $State,
        [Nullable[int]] $ChildPid,
        [string] $ChildIdentity,
        [string] $WslControl
    )
    $owner = [ordered] @{
        schema = 3
        runner_pid = $PID
        runner_identity = $runnerIdentity
        child_pid = $ChildPid
        child_identity = $ChildIdentity
        lane = $Lane
        target = $Target
        run_id = $runId
        state = $State
        started_utc = [DateTime]::UtcNow.ToString("o")
        quarantine_path = $QuarantineFile
        wsl_control = $WslControl
        source_fingerprint_scheme = $SourceFingerprintScheme
        source_fingerprint = $sourceFingerprint
        session_fingerprint = $runnerSessionFingerprint
    }
    Write-AtomicJson -Path $LockOwner -Value $owner
}

function Read-Quarantine {
    $null = Get-SafeLeaf -Path $QuarantineFile
    try {
        $record = Get-Content -Raw -LiteralPath $QuarantineFile |
            ConvertFrom-Json
    }
    catch {
        throw "quarantine record is invalid: $($_.Exception.Message)"
    }
    foreach ($field in @(
        "schema",
        "lane",
        "target",
        "run_id",
        "state",
        "source_fingerprint_scheme",
        "source_fingerprint",
        "session_fingerprint",
        "child_pid",
        "child_identity",
        "wsl_control"
    )) {
        if ($null -eq $record.PSObject.Properties[$field]) {
            throw (
                "quarantine record lacks $field; refusing to clear it " +
                "automatically"
            )
        }
    }
    if ([int] $record.schema -ne 4) {
        throw "unsupported quarantine schema: $($record.schema)"
    }
    if ([string] $record.lane -cne $Lane -or
        [string] $record.target -cne $Target) {
        throw "quarantine record does not match $Lane/$Target"
    }
    if ([String]::IsNullOrWhiteSpace([string] $record.run_id)) {
        throw "quarantine record has no run identity"
    }
    if ([string] $record.source_fingerprint_scheme -cne
        $SourceFingerprintScheme) {
        throw "quarantine record uses an unsupported source fingerprint"
    }
    if ([string] $record.state -notin @(
        "armed",
        "running",
        "watchdog",
        "abnormal"
    )) {
        throw "quarantine record has an invalid state"
    }
    foreach ($field in @("source_fingerprint", "session_fingerprint")) {
        $value = [string] $record.$field
        if ($value -notmatch "^[0-9a-f]{64}$") {
            throw "quarantine record has an invalid $field"
        }
    }
    return $record
}

function Remove-ValidatedQuarantine {
    $resolved = Assert-WithinRepo -Path $QuarantineFile
    $expected = [IO.Path]::GetFullPath($QuarantineFile)
    if (-not $resolved.Equals(
        $expected,
        [StringComparison]::OrdinalIgnoreCase
    )) {
        throw "refusing to remove unexpected quarantine path: $resolved"
    }
    $null = Get-SafeLeaf -Path $resolved
    Remove-Item -LiteralPath $resolved -Force
}

function Write-Quarantine {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet("armed", "running", "watchdog", "abnormal")]
        [string] $State,
        [Parameter(Mandatory = $true)]
        [string] $Reason,
        [Parameter(Mandatory = $true)]
        [string] $MetadataPath,
        [Parameter(Mandatory = $true)]
        [string] $StdoutPath,
        [Parameter(Mandatory = $true)]
        [string] $StderrPath,
        [Nullable[int]] $ChildPid,
        [string] $ChildIdentity,
        [string] $WslControl
    )
    $record = [ordered] @{
        schema = 4
        lane = $Lane
        target = $Target
        run_id = $runId
        state = $State
        quarantined_utc = [DateTime]::UtcNow.ToString("o")
        source_fingerprint_scheme = $SourceFingerprintScheme
        source_fingerprint = $sourceFingerprint
        session_fingerprint = $runnerSessionFingerprint
        reason = $Reason
        metadata = $MetadataPath
        stdout = $StdoutPath
        stderr = $StderrPath
        child_pid = $ChildPid
        child_identity = $ChildIdentity
        wsl_control = $WslControl
        recovery = (
            "Run this lane in CI. Local clearing requires both a changed " +
            "source fingerprint and a later runner session."
        )
    }
    Write-AtomicJson -Path $QuarantineFile -Value $record
}

function Convert-ToWslPath {
    param(
        [Parameter(Mandatory = $true)]
        [string] $WindowsPath
    )
    $resolved = [IO.Path]::GetFullPath($WindowsPath)
    if ($resolved -notmatch "^([A-Za-z]):\\(.*)$") {
        throw "cannot convert non-drive path to WSL: $resolved"
    }
    $drive = $Matches[1].ToLowerInvariant()
    $suffix = $Matches[2].Replace("\", "/")
    return "/mnt/$drive/$suffix"
}

function Invoke-WslCommand {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Script,
        [string[]] $Arguments = @(),
        [int] $TimeoutSeconds = $TerminationTimeoutSeconds
    )
    $commandArguments = @("--exec", "bash", "-c", $Script, "snarkpack-fv")
    $commandArguments += $Arguments
    $startInfo = [Diagnostics.ProcessStartInfo]::new()
    $startInfo.FileName = "wsl.exe"
    $startInfo.Arguments = (
        $commandArguments | ForEach-Object {
            ConvertTo-WindowsArgument -Value ([string] $_)
        }
    ) -join " "
    $startInfo.WorkingDirectory = $RepoRoot
    $startInfo.CreateNoWindow = $true
    $startInfo.UseShellExecute = $false
    $startInfo.WindowStyle = [Diagnostics.ProcessWindowStyle]::Hidden
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    $result = Invoke-StartInfoCapture `
        -StartInfo $startInfo `
        -Label "WSL control" `
        -TimeoutSeconds $TimeoutSeconds
    $utf8 = [Text.UTF8Encoding]::new($false)
    $stdout = $utf8.GetString($result.Stdout)
    $stderr = $utf8.GetString($result.Stderr)
    if ($result.ExitCode -ne 0) {
        throw (
            "WSL control failed with exit code $($result.ExitCode): " +
            $stderr.Trim()
        )
    }
    return $stdout
}

function Read-WslControl {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [switch] $AllowMissing
    )
    $item = Get-SafeLeaf -Path $Path -AllowMissing:$AllowMissing
    if ($null -eq $item) {
        return $null
    }
    $content = (Get-Content -Raw -LiteralPath $item.FullName).Trim()
    if ($content -notmatch (
        "^([1-9][0-9]*) ([1-9][0-9]*) ([1-9][0-9]*) " +
        "([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-" +
        "[0-9a-fA-F]{4}-[0-9a-fA-F]{12})$"
    )) {
        throw "WSL control record is invalid: $($item.FullName)"
    }
    $pgid = [int64] $Matches[1]
    $leader = [int64] $Matches[2]
    if ($pgid -ne $leader) {
        throw "WSL control leader is not its process-group leader"
    }
    return [pscustomobject] @{
        Path = $item.FullName
        Pgid = $pgid
        LeaderPid = $leader
        StartTicks = [int64] $Matches[3]
        BootId = $Matches[4].ToLowerInvariant()
    }
}

function Wait-WslControl {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $true)]
        [Diagnostics.Process] $WindowsChild
    )
    $deadline = [DateTime]::UtcNow.AddSeconds($WslControlTimeoutSeconds)
    do {
        $control = Read-WslControl -Path $Path -AllowMissing
        if ($null -ne $control) {
            return $control
        }
        $WindowsChild.Refresh()
        if ($WindowsChild.HasExited) {
            break
        }
        Start-Sleep -Milliseconds 200
    } while ([DateTime]::UtcNow -lt $deadline)
    throw "WSL payload did not publish its process-group identity"
}

function Get-WslGroupUsage {
    param(
        [Parameter(Mandatory = $true)]
        [pscustomobject] $Control
    )
    $probe = @'
set -euo pipefail
pgid="$1"
leader="$2"
boot="$(cat /proc/sys/kernel/random/boot_id)"
count=0
kib=0
start=0
shopt -s nullglob
for stat_path in /proc/[0-9]*/stat; do
  pid="${stat_path#/proc/}"
  pid="${pid%/stat}"
  if ! stat="$(<"$stat_path")"; then
    [[ ! -d "/proc/$pid" ]] && continue
    exit 70
  fi
  rest="${stat##*) }"
  [[ "$rest" != "$stat" ]] || exit 71
  read -r -a fields <<<"$rest"
  (( ${#fields[@]} >= 20 )) || exit 72
  process_pgid="${fields[2]}"
  process_start="${fields[19]}"
  if [[ "$pid" == "$leader" ]]; then
    start="$process_start"
  fi
  [[ "$process_pgid" == "$pgid" ]] || continue
  rss=
  status_path="/proc/$pid/status"
  if [[ -r "$status_path" ]]; then
    while read -r key value unit; do
      if [[ "$key" == "VmRSS:" ]]; then
        [[ "$value" =~ ^[0-9]+$ ]] || exit 73
        rss="$value"
        break
      fi
    done < "$status_path"
  fi
  if [[ -z "$rss" ]]; then
    [[ ! -d "/proc/$pid" ]] && continue
    [[ "${fields[0]}" == "Z" ]] || exit 74
    rss=0
  fi
  count=$((count + 1))
  kib=$((kib + rss))
done
printf "%s %s %s %s\n" "$boot" "$count" "$kib" "$start"
'@
    $output = (
        Invoke-WslCommand `
            -Script $probe `
            -Arguments @("$($Control.Pgid)", "$($Control.LeaderPid)") `
            -TimeoutSeconds $CimTimeoutSeconds
    ).Trim()
    if ($output -notmatch (
        "^([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-" +
        "[0-9a-fA-F]{4}-[0-9a-fA-F]{12}) " +
        "([0-9]+) ([0-9]+) ([0-9]+)$"
    )) {
        throw "WSL process-group probe returned an invalid result"
    }
    $bootId = $Matches[1].ToLowerInvariant()
    $count = [int64] $Matches[2]
    $rssKib = [uint64] $Matches[3]
    $leaderStart = [int64] $Matches[4]
    if ($bootId -cne [string] $Control.BootId) {
        throw "WSL boot identity changed during FV execution"
    }
    if ($leaderStart -ne 0 -and
        $leaderStart -ne [int64] $Control.StartTicks) {
        throw "WSL leader PID was reused"
    }
    return [pscustomobject] @{
        Count = $count
        RssBytes = [uint64] ($rssKib * 1024)
    }
}

function Stop-WslGroupAndVerify {
    param(
        [Parameter(Mandatory = $true)]
        [pscustomobject] $Control
    )
    $stop = @'
set -euo pipefail
pgid="$1"
leader="$2"
expected_start="$3"
expected_boot="$4"
stat_fields() {
  local pid="$1"
  local stat rest
  [[ -r "/proc/$pid/stat" ]] || return 1
  stat="$(<"/proc/$pid/stat")"
  rest="${stat##*) }"
  [[ "$rest" != "$stat" ]] || return 2
  read -r -a fields <<<"$rest"
  (( ${#fields[@]} >= 20 )) || return 2
}
verify_identity() {
  [[ "$(cat /proc/sys/kernel/random/boot_id)" == "$expected_boot" ]]
  if stat_fields "$leader"; then
    [[ "${fields[19]}" == "$expected_start" ]]
  else
    [[ ! -d "/proc/$leader" ]]
  fi
}
members() {
  local stat_path pid
  shopt -s nullglob
  for stat_path in /proc/[0-9]*/stat; do
    pid="${stat_path#/proc/}"
    pid="${pid%/stat}"
    if stat_fields "$pid"; then
      if [[ "${fields[2]}" == "$pgid" ]]; then
        return 0
      fi
    else
      [[ ! -d "/proc/$pid" ]] || exit 75
    fi
  done
  return 1
}
verify_identity
if members; then
  verify_identity
  kill -TERM -- "-$pgid" 2>/dev/null || true
fi
for _ in $(seq 1 15); do
  members || exit 0
  sleep 0.2
done
verify_identity
kill -KILL -- "-$pgid" 2>/dev/null || true
for _ in $(seq 1 25); do
  members || exit 0
  sleep 0.2
done
exit 1
'@
    $null = Invoke-WslCommand `
        -Script $stop `
        -Arguments @(
            "$($Control.Pgid)",
            "$($Control.LeaderPid)",
            "$($Control.StartTicks)",
            "$($Control.BootId)"
        ) `
        -TimeoutSeconds $WslTerminationTimeoutSeconds
    $remaining = Get-WslGroupUsage -Control $Control
    if ($remaining.Count -ne 0) {
        throw (
            "WSL process group $($Control.Pgid) still has " +
            "$($remaining.Count) member(s)"
        )
    }
}

function Get-ProcessTree {
    param(
        [Parameter(Mandatory = $true)]
        [int] $RootPid
    )
    try {
        $snapshot = @(
            Get-CimInstance `
                -ClassName Win32_Process `
                -OperationTimeoutSec $CimTimeoutSeconds
        )
    }
    catch {
        throw "process-tree monitoring unavailable: $($_.Exception.Message)"
    }
    $children = @{}
    foreach ($item in $snapshot) {
        $parent = [uint32] $item.ParentProcessId
        if (-not $children.ContainsKey($parent)) {
            $children[$parent] = [Collections.Generic.List[uint32]]::new()
        }
        $children[$parent].Add([uint32] $item.ProcessId)
    }
    $pending = [Collections.Generic.Queue[uint32]]::new()
    $pending.Enqueue([uint32] $RootPid)
    $seen = [Collections.Generic.HashSet[uint32]]::new()
    while ($pending.Count -ne 0) {
        $current = $pending.Dequeue()
        if (-not $seen.Add($current)) {
            continue
        }
        if ($children.ContainsKey($current)) {
            foreach ($child in $children[$current]) {
                $pending.Enqueue($child)
            }
        }
    }
    return @($seen)
}

function Get-ProcessTreeRss {
    param(
        [Parameter(Mandatory = $true)]
        [int] $RootPid,
        [Parameter(Mandatory = $true)]
        [Collections.Generic.Dictionary[int, string]] $OwnedProcesses
    )
    $total = [uint64] 0
    foreach ($processId in @(Get-ProcessTree -RootPid $RootPid)) {
        try {
            $process = Get-Process -Id $processId -ErrorAction Stop
            $identity = $process.StartTime.ToUniversalTime().Ticks.ToString()
            if (-not $OwnedProcesses.ContainsKey([int] $processId)) {
                $OwnedProcesses.Add([int] $processId, $identity)
            }
            elseif ($OwnedProcesses[[int] $processId] -cne $identity) {
                throw "PID $processId changed identity during FV monitoring"
            }
            $total += [uint64] $process.WorkingSet64
        }
        catch [Microsoft.PowerShell.Commands.ProcessCommandException] {
            # A descendant may exit between the process snapshot and RSS read.
        }
    }
    return $total
}

function Get-ProcessIdentity {
    param(
        [Parameter(Mandatory = $true)]
        [int] $ProcessId
    )
    $process = Get-Process -Id $ProcessId -ErrorAction SilentlyContinue
    if ($null -eq $process) {
        return $null
    }
    return $process.StartTime.ToUniversalTime().Ticks.ToString()
}

function Invoke-TaskKill {
    param(
        [Parameter(Mandatory = $true)]
        [int] $ProcessId,
        [switch] $Tree,
        [int] $TimeoutSeconds = $TerminationTimeoutSeconds
    )
    $arguments = @("/PID", "$ProcessId")
    if ($Tree) {
        $arguments += "/T"
    }
    $arguments += "/F"
    $startInfo = [Diagnostics.ProcessStartInfo]::new()
    $startInfo.FileName = "taskkill.exe"
    $startInfo.Arguments = (
        $arguments | ForEach-Object {
            ConvertTo-WindowsArgument -Value $_
        }
    ) -join " "
    $startInfo.WorkingDirectory = $RepoRoot
    $startInfo.CreateNoWindow = $true
    $startInfo.UseShellExecute = $false
    $startInfo.WindowStyle = [Diagnostics.ProcessWindowStyle]::Hidden
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    return Invoke-StartInfoCapture `
        -StartInfo $startInfo `
        -Label "taskkill $ProcessId" `
        -TimeoutSeconds $TimeoutSeconds
}

function Stop-ExactProcessTree {
    param(
        [Parameter(Mandatory = $true)]
        [int] $RootPid,
        [Parameter(Mandatory = $true)]
        [string] $RootIdentity,
        [Parameter(Mandatory = $true)]
        [Collections.Generic.Dictionary[int, string]] $OwnedProcesses
    )
    $errors = [Collections.Generic.List[string]]::new()
    $currentRoot = Get-ProcessIdentity -ProcessId $RootPid
    if ($null -ne $currentRoot -and $currentRoot -cne $RootIdentity) {
        throw "refusing to kill reused root PID $RootPid"
    }
    if ($null -ne $currentRoot) {
        try {
            $null = Get-ProcessTreeRss `
                -RootPid $RootPid `
                -OwnedProcesses $OwnedProcesses
        }
        catch {
            $errors.Add(
                "final descendant snapshot failed: $($_.Exception.Message)"
            )
        }
        try {
            $result = Invoke-TaskKill -ProcessId $RootPid -Tree
            $remainingRoot = Get-ProcessIdentity -ProcessId $RootPid
            if ($result.ExitCode -ne 0 -and
                $remainingRoot -ceq $RootIdentity) {
                $errors.Add(
                    "taskkill failed for FV tree rooted at $RootPid"
                )
            }
        }
        catch {
            $errors.Add(
                "root-tree termination failed: $($_.Exception.Message)"
            )
        }
    }
    $descendantDeadline = [DateTime]::UtcNow.AddSeconds(
        $TerminationTimeoutSeconds
    )
    foreach ($entry in @($OwnedProcesses.GetEnumerator())) {
        $processId = [int] $entry.Key
        $expected = [string] $entry.Value
        $actual = Get-ProcessIdentity -ProcessId $processId
        if ($actual -ceq $expected) {
            $secondsLeft = [int] [Math]::Ceiling(
                ($descendantDeadline - [DateTime]::UtcNow).TotalSeconds
            )
            if ($secondsLeft -le 0) {
                $errors.Add("owned-process cleanup exceeded its deadline")
                break
            }
            try {
                $result = Invoke-TaskKill `
                    -ProcessId $processId `
                    -Tree `
                    -TimeoutSeconds $secondsLeft
                $afterKill = Get-ProcessIdentity -ProcessId $processId
                if ($result.ExitCode -ne 0 -and $afterKill -ceq $expected) {
                    $errors.Add(
                        "taskkill failed for owned FV process $processId"
                    )
                }
            }
            catch {
                $errors.Add(
                    "owned-process termination failed for ${processId}: " +
                    $_.Exception.Message
                )
            }
        }
    }
    foreach ($entry in @($OwnedProcesses.GetEnumerator())) {
        $actual = Get-ProcessIdentity -ProcessId ([int] $entry.Key)
        if ($actual -ceq [string] $entry.Value) {
            $errors.Add(
                "owned FV process $($entry.Key) survived termination"
            )
        }
    }
    try {
        Assert-NoFvProcesses
    }
    catch {
        $errors.Add($_.Exception.Message)
    }
    if ($errors.Count -ne 0) {
        throw ($errors.ToArray() -join "; ")
    }
}

function Get-Tail {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [int] $Lines = 50
    )
    if (-not (Test-Path -LiteralPath $Path)) {
        return ""
    }
    return (Get-Content -LiteralPath $Path -Tail $Lines) -join `
        [Environment]::NewLine
}

function ConvertTo-WindowsArgument {
    param(
        [Parameter(Mandatory = $true)]
        [AllowEmptyString()]
        [string] $Value
    )
    if ($Value.Length -ne 0 -and $Value -notmatch '[\s"]') {
        return $Value
    }
    $quote = [char] 34
    $slash = [char] 92
    $builder = [Text.StringBuilder]::new()
    $null = $builder.Append($quote)
    $pendingSlashes = 0
    foreach ($character in $Value.ToCharArray()) {
        if ($character -eq $slash) {
            $pendingSlashes += 1
            continue
        }
        if ($character -eq $quote) {
            $null = $builder.Append(
                $slash,
                (2 * $pendingSlashes) + 1
            )
            $null = $builder.Append($quote)
            $pendingSlashes = 0
            continue
        }
        if ($pendingSlashes -ne 0) {
            $null = $builder.Append($slash, $pendingSlashes)
            $pendingSlashes = 0
        }
        $null = $builder.Append($character)
    }
    if ($pendingSlashes -ne 0) {
        $null = $builder.Append($slash, 2 * $pendingSlashes)
    }
    $null = $builder.Append($quote)
    return $builder.ToString()
}

function Resolve-CargoManifest {
    if ([IO.Path]::IsPathRooted($CargoManifest) -or
        $CargoManifest.StartsWith("-", [StringComparison]::Ordinal)) {
        throw "CargoManifest must be a repository-relative proof-aggregation path"
    }
    if ($CargoManifest.Contains("\") -or
        $CargoManifest -cnotmatch (
            "^crates/crypto/proof-aggregation" +
            "(/[A-Za-z0-9_.-]+)*/Cargo\.toml$"
        )) {
        throw "CargoManifest must be a canonical proof-aggregation manifest path"
    }
    $normalized = $CargoManifest
    $parts = $normalized.Split("/")
    $invalidParts = @($parts | Where-Object { $_ -in @("", ".", "..") })
    if ($parts.Count -eq 0 -or $invalidParts.Count -ne 0) {
        throw "CargoManifest is not a normalized repository path"
    }
    if ([IO.Path]::GetFileName($normalized) -cne "Cargo.toml") {
        throw "CargoManifest must name Cargo.toml"
    }
    $candidate = Assert-WithinRepo -Path (Join-Path $RepoRoot $normalized)
    $proofRoot = [IO.Path]::GetFullPath(
        (Join-Path $RepoRoot "crates\crypto\proof-aggregation")
    )
    $prefix = $proofRoot.TrimEnd(
        [IO.Path]::DirectorySeparatorChar,
        [IO.Path]::AltDirectorySeparatorChar
    ) + [IO.Path]::DirectorySeparatorChar
    if (-not $candidate.StartsWith(
        $prefix,
        [StringComparison]::OrdinalIgnoreCase
    )) {
        throw "CargoManifest must remain inside $proofRoot"
    }
    $null = Assert-SafeExistingPath -Path $proofRoot -Kind Directory
    $null = Get-SafeLeaf -Path $candidate
    return $candidate
}

function Complete-OutputDrains {
    param(
        [Diagnostics.Process] $Child,
        [Threading.Tasks.Task] $StdoutTask,
        [Threading.Tasks.Task] $StderrTask,
        [IO.Stream] $StdoutDestination,
        [IO.Stream] $StderrDestination
    )
    $errors = [Collections.Generic.List[string]]::new()
    foreach ($entry in @(
        [pscustomobject] @{ Label = "stdout"; Task = $StdoutTask },
        [pscustomobject] @{ Label = "stderr"; Task = $StderrTask }
    )) {
        if ($null -eq $entry.Task) {
            continue
        }
        try {
            Wait-TaskBounded `
                -Task $entry.Task `
                -Label "FV $($entry.Label) drain"
        }
        catch {
            $errors.Add($_.Exception.Message)
        }
    }
    if ($errors.Count -ne 0 -and $null -ne $Child) {
        try {
            $Child.StandardOutput.Close()
            $Child.StandardError.Close()
        }
        catch {
            $errors.Add("failed to close child output handles")
        }
    }
    foreach ($stream in @($StdoutDestination, $StderrDestination)) {
        if ($null -eq $stream) {
            continue
        }
        try {
            $stream.Flush()
            $stream.Dispose()
        }
        catch {
            $errors.Add("failed to close an FV log stream")
        }
    }
    if ($errors.Count -ne 0) {
        throw ($errors.ToArray() -join "; ")
    }
}

function Assert-OwnedProcessesGone {
    param(
        [Parameter(Mandatory = $true)]
        [Collections.Generic.Dictionary[int, string]] $OwnedProcesses
    )
    foreach ($entry in @($OwnedProcesses.GetEnumerator())) {
        $actual = Get-ProcessIdentity -ProcessId ([int] $entry.Key)
        if ($actual -ceq [string] $entry.Value) {
            throw "owned FV process $($entry.Key) remains active"
        }
    }
    Assert-NoFvProcesses
}

function Write-RunMetadata {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Status,
        [string] $Reason,
        [Nullable[int]] $ExitCode,
        [string] $CompletionFingerprint,
        [string] $CompletionFreezeFingerprint
    )
    if ([String]::IsNullOrWhiteSpace($metadataLog)) {
        throw "metadata path was not initialized"
    }
    $record = [ordered] @{
        lane = $Lane
        target = $Target
        run_id = $runId
        status = $Status
        reason = $Reason
        exit_code = $ExitCode
        source_fingerprint_scheme = $SourceFingerprintScheme
        source_fingerprint = $sourceFingerprint
        completion_source_fingerprint = $CompletionFingerprint
        source_freeze_fingerprint = $sourceFreezeFingerprint
        completion_source_freeze_fingerprint =
            $CompletionFreezeFingerprint
        session_fingerprint = $runnerSessionFingerprint
        child_pid = if ($null -eq $child) { $null } else { $child.Id }
        child_identity = $childIdentity
        wsl_control = $wslControlFile
        stdout = $stdoutLog
        stderr = $stderrLog
    }
    Write-AtomicJson -Path $metadataLog -Value $record
}

$lockHeld = $false
$child = $null
$stdoutStream = $null
$stderrStream = $null
$stdoutCopy = $null
$stderrCopy = $null
$sourceSnapshot = $null
$sourceFingerprint = $null
$sourceFreezeFingerprint = $null
$extractionFreeze = $null
$runnerSessionFingerprint = $null
$runnerIdentity = $null
$childIdentity = $null
$ownedProcesses = [Collections.Generic.Dictionary[int, string]]::new()
$wslControlFile = $null
$wslControl = $null
$runId = $null
$launchMarkerActive = $false
$unsafeChildPossible = $false
$retainLock = $false
$watchdogReason = $null
$metadataLog = $null
$stdoutLog = $null
$stderrLog = $null
try {
    Assert-ValidTarget
    $TargetHash = Get-TextSha256 -Value $Target
    $SafeTarget = Get-SafeTargetName -TargetValue $Target
    $QuarantineFile = Join-Path `
        $TempRoot `
        "quarantine-$Lane-$SafeTarget.json"

    Ensure-SafeDirectory -Path (Split-Path $TempRoot -Parent)
    Ensure-SafeDirectory -Path $TempRoot
    $runnerIdentity = Get-ProcessIdentity -ProcessId $PID
    if ($null -eq $runnerIdentity) {
        throw "could not establish the runner process identity"
    }
    $runnerSessionFingerprint = Get-RunnerSessionFingerprint

    $stamp = [DateTime]::UtcNow.ToString("yyyyMMddTHHmmss.fffffffZ")
    $runId = "$stamp-$PID-$([Guid]::NewGuid().ToString('N'))"
    $safeStem = $Target -replace "[^A-Za-z0-9_.-]", "_"
    $logStem = $safeStem
    if ($logStem.Length -gt 24) {
        $logStem = $logStem.Substring(0, 24)
    }
    $logTarget = "$logStem-$($TargetHash.Substring(0, 16))"
    $logPrefix = Join-Path $TempRoot "$runId-$Lane-$logTarget"
    $stdoutLog = "$logPrefix.stdout.log"
    $stderrLog = "$logPrefix.stderr.log"
    $metadataLog = "$logPrefix.json"
    if ($Lane -eq "extract") {
        $wslControlFile = "$logPrefix.wsl-control"
    }
    Acquire-FvLock
    $lockHeld = $true
    Write-LockOwner `
        -State preflight `
        -WslControl $wslControlFile
    Assert-NoFvProcesses
    $sourceSnapshot = Get-StableSourceSnapshot
    $sourceFingerprint = [string] $sourceSnapshot.Fingerprint
    if ($Lane -eq "extract") {
        $extractionFreeze = Get-ExtractionFreezeSnapshot
        $sourceFreezeFingerprint = [string] $extractionFreeze.Fingerprint
    }
    Write-LockOwner `
        -State preflight `
        -WslControl $wslControlFile

    $existingQuarantine = Get-SafeLeaf `
        -Path $QuarantineFile `
        -AllowMissing
    if ($ClearQuarantine) {
        Assert-NoFvProcesses
        if ($null -ne $existingQuarantine) {
            $quarantine = Read-Quarantine
            $blockedReasons = [Collections.Generic.List[string]]::new()
            if ([string] $quarantine.source_fingerprint -ceq
                $sourceFingerprint) {
                $blockedReasons.Add("the source fingerprint is unchanged")
            }
            if ([string] $quarantine.session_fingerprint -ceq
                $runnerSessionFingerprint) {
                $blockedReasons.Add("the runner session is unchanged")
            }
            if ($blockedReasons.Count -ne 0) {
                throw (
                    "refusing -ClearQuarantine because " +
                    (($blockedReasons.ToArray()) -join " and ") +
                    "; run this lane in CI, then retry locally only after " +
                    "a source fix in a later session"
                )
            }
            Remove-ValidatedQuarantine
            $existingQuarantine = $null
        }
    }
    if ($null -ne $existingQuarantine) {
        throw (
            "$Lane/$Target is quarantined to CI by $QuarantineFile; " +
            "do not retry it locally in this session"
        )
    }

    $freeAtLaunch = Get-HostFreeMemory
    if ($freeAtLaunch -lt $MinimumLaunchMemory) {
        throw (
            "only $([Math]::Round($freeAtLaunch / $GiB, 2)) GiB host memory " +
            "is free; 8 GiB is required"
        )
    }

    switch ($Lane) {
        "lean" {
            $null = Assert-SafeExistingPath `
                -Path $LeanRoot `
                -Kind Directory
            $executable = "lake"
            $arguments = @("build", $Target)
            $workingDirectory = $LeanRoot
        }
        "rust" {
            $manifest = Resolve-CargoManifest
            $executable = "cargo"
            $arguments = @(
                "test",
                "--manifest-path", $manifest,
                "--jobs", "1",
                $Target,
                "--",
                "--test-threads=1"
            )
            $workingDirectory = $RepoRoot
        }
        "extract" {
            $null = Get-SafeLeaf -Path $ExtractionScript
            $wslScript = Convert-ToWslPath -WindowsPath $ExtractionScript
            $wslControlPath = Convert-ToWslPath `
                -WindowsPath $wslControlFile
            $wrapper = @'
set -euo pipefail
control="$1"
shift
stat="$(<"/proc/$$/stat")"
rest="${stat##*) }"
[[ "$rest" != "$stat" ]]
read -r -a fields <<<"$rest"
(( ${#fields[@]} >= 20 ))
pgid="${fields[2]}"
[[ "$pgid" =~ ^[1-9][0-9]*$ ]]
[[ "$pgid" == "$$" ]]
start="${fields[19]}"
boot="$(cat /proc/sys/kernel/random/boot_id)"
tmp="${control}.tmp.$$"
umask 077
printf "%s %s %s %s\n" "$pgid" "$$" "$start" "$boot" > "$tmp"
mv -f -- "$tmp" "$control"
exec "$@"
'@
            $executable = "wsl.exe"
            $arguments = @(
                "--exec",
                "setsid",
                "--wait",
                "bash",
                "-c",
                $wrapper,
                "snarkpack-fv-wrapper",
                $wslControlPath,
                "env",
                "CARGO_BUILD_JOBS=1",
                "LEAN_NUM_THREADS=1",
                "RAYON_NUM_THREADS=1",
                "python3",
                $wslScript,
                "regenerate",
                "--graph",
                $Target,
                "--update-manifest"
            )
            $workingDirectory = $RepoRoot
        }
    }

    $null = Assert-SafeExistingPath -Path $TempRoot -Kind Directory
    $stdoutStream = [IO.File]::Open(
        $stdoutLog,
        [IO.FileMode]::CreateNew,
        [IO.FileAccess]::Write,
        [IO.FileShare]::Read
    )
    $stderrStream = [IO.File]::Open(
        $stderrLog,
        [IO.FileMode]::CreateNew,
        [IO.FileAccess]::Write,
        [IO.FileShare]::Read
    )
    Write-Quarantine `
        -State armed `
        -Reason "pre-launch safety marker" `
        -MetadataPath $metadataLog `
        -StdoutPath $stdoutLog `
        -StderrPath $stderrLog `
        -WslControl $wslControlFile
    $launchMarkerActive = $true
    Write-LockOwner `
        -State armed `
        -WslControl $wslControlFile

    $oldEnvironment = @{}
    foreach ($name in @(
        "CARGO_BUILD_JOBS",
        "LEAN_NUM_THREADS",
        "RAYON_NUM_THREADS"
    )) {
        $oldEnvironment[$name] = [Environment]::GetEnvironmentVariable(
            $name,
            "Process"
        )
        [Environment]::SetEnvironmentVariable($name, "1", "Process")
    }
    try {
        $commandTokens = @($arguments | ForEach-Object {
            ConvertTo-WindowsArgument -Value ([string] $_)
        })
        $startInfo = [Diagnostics.ProcessStartInfo]::new()
        $startInfo.FileName = $executable
        $startInfo.Arguments = $commandTokens -join " "
        $startInfo.WorkingDirectory = $workingDirectory
        $startInfo.CreateNoWindow = $true
        $startInfo.UseShellExecute = $false
        $startInfo.WindowStyle = [Diagnostics.ProcessWindowStyle]::Hidden
        $startInfo.RedirectStandardOutput = $true
        $startInfo.RedirectStandardError = $true
        # From this point forward a thrown exception may still have created a
        # child, so cleanup must prove ownership is gone before releasing state.
        $unsafeChildPossible = $true
        $child = [Diagnostics.Process]::Start($startInfo)
        if ($null -eq $child) {
            throw "failed to start FV child process"
        }
        $childIdentity = Get-ProcessIdentity -ProcessId $child.Id
        if ($null -eq $childIdentity) {
            throw "could not establish the FV child process identity"
        }
        $ownedProcesses.Add($child.Id, $childIdentity)
        $stdoutCopy = $child.StandardOutput.BaseStream.CopyToAsync(
            $stdoutStream
        )
        $stderrCopy = $child.StandardError.BaseStream.CopyToAsync(
            $stderrStream
        )
    }
    finally {
        foreach ($name in $oldEnvironment.Keys) {
            [Environment]::SetEnvironmentVariable(
                $name,
                $oldEnvironment[$name],
                "Process"
            )
        }
    }
    if ($Lane -eq "extract") {
        $wslControl = Wait-WslControl `
            -Path $wslControlFile `
            -WindowsChild $child
    }
    Write-Quarantine `
        -State running `
        -Reason "FV child is running" `
        -MetadataPath $metadataLog `
        -StdoutPath $stdoutLog `
        -StderrPath $stderrLog `
        -ChildPid $child.Id `
        -ChildIdentity $childIdentity `
        -WslControl $wslControlFile
    Write-LockOwner `
        -State running `
        -ChildPid $child.Id `
        -ChildIdentity $childIdentity `
        -WslControl $wslControlFile

    $started = [DateTime]::UtcNow
    while (-not $child.HasExited) {
        Start-Sleep -Seconds $PollSeconds
        $child.Refresh()
        if ($child.HasExited) {
            break
        }
        try {
            $free = Get-HostFreeMemory
            $actualChildIdentity = Get-ProcessIdentity -ProcessId $child.Id
            if ($null -eq $actualChildIdentity) {
                throw "FV child identity became unavailable while running"
            }
            if ($actualChildIdentity -cne $childIdentity) {
                throw "FV child PID changed identity"
            }
            if ($Lane -eq "extract") {
                $wslUsage = Get-WslGroupUsage -Control $wslControl
                $rss = $wslUsage.RssBytes
            }
            else {
                $rss = Get-ProcessTreeRss `
                    -RootPid $child.Id `
                    -OwnedProcesses $ownedProcesses
            }
        }
        catch {
            $watchdogReason = (
                "monitoring unavailable: $($_.Exception.Message)"
            )
            break
        }
        if ($free -lt $MinimumRunningMemory) {
            $watchdogReason = (
                "host free memory fell to " +
                "$([Math]::Round($free / $GiB, 2)) GiB"
            )
            break
        }
        if ($rss -gt $MaximumProcessTreeRss) {
            $watchdogReason = (
                "FV process-tree RSS reached " +
                "$([Math]::Round($rss / $GiB, 2)) GiB"
            )
            break
        }
        $elapsed = ([DateTime]::UtcNow - $started).TotalSeconds
        if ($elapsed -ge $LaneTimeoutSeconds[$Lane]) {
            $watchdogReason = (
                "$Lane exceeded $($LaneTimeoutSeconds[$Lane]) seconds"
            )
            break
        }
    }

    if ($null -ne $watchdogReason) {
        throw (
            "$watchdogReason; lane is quarantined to CI. " +
            "Logs: $stdoutLog and $stderrLog"
        )
    }

    if ($Lane -eq "extract") {
        if ($null -eq $wslControl) {
            $wslControl = Read-WslControl -Path $wslControlFile
        }
        $wslUsage = Get-WslGroupUsage -Control $wslControl
        if ($wslUsage.Count -ne 0) {
            throw (
                "WSL payload exited with $($wslUsage.Count) orphaned " +
                "process-group member(s)"
            )
        }
    }
    Assert-OwnedProcessesGone -OwnedProcesses $ownedProcesses
    Complete-OutputDrains `
        -Child $child `
        -StdoutTask $stdoutCopy `
        -StderrTask $stderrCopy `
        -StdoutDestination $stdoutStream `
        -StderrDestination $stderrStream
    $stdoutStream = $null
    $stderrStream = $null
    $stdoutCopy = $null
    $stderrCopy = $null
    $child.Refresh()
    $exitCode = [int] $child.ExitCode
    $completionFingerprint = $null
    $completionFreezeFingerprint = $null
    if ($exitCode -eq 0) {
        $completionSnapshot = Get-StableSourceSnapshot
        $completionFingerprint = [string] $completionSnapshot.Fingerprint
        if ($Lane -eq "extract") {
            $completionFreeze = Get-ExtractionFreezeSnapshot
            $completionFreezeFingerprint = [string] (
                $completionFreeze.Fingerprint
            )
            if ($completionFreezeFingerprint -cne
                    $sourceFreezeFingerprint -or
                [string] $completionFreeze.OutputPath -cne
                    [string] $extractionFreeze.OutputPath) {
                throw "extraction inputs changed during a successful lane"
            }
            $allowedChanges = [Collections.Generic.HashSet[string]]::new(
                [StringComparer]::Ordinal
            )
            $null = $allowedChanges.Add(
                [string] $extractionFreeze.OutputPath
            )
            $null = $allowedChanges.Add(
                [string] $extractionFreeze.ManifestPath
            )
            $unexpectedChanges = @(
                Get-SourceSnapshotChanges `
                    -Before $sourceSnapshot `
                    -After $completionSnapshot |
                    Where-Object { -not $allowedChanges.Contains($_) }
            )
            if ($unexpectedChanges.Count -ne 0) {
                throw (
                    "unexpected source changes during extraction: " +
                    ($unexpectedChanges -join ", ")
                )
            }
        }
        elseif ($completionFingerprint -cne $sourceFingerprint) {
            throw "SnarkPack FV source changed during a successful lane"
        }
    }
    $completionStatus = if ($exitCode -eq 0) { "passed" } else { "failed" }
    Write-RunMetadata `
        -Status $completionStatus `
        -ExitCode $exitCode `
        -CompletionFingerprint $completionFingerprint `
        -CompletionFreezeFingerprint $completionFreezeFingerprint
    Remove-ValidatedQuarantine
    $launchMarkerActive = $false
    $unsafeChildPossible = $false
    if ($exitCode -ne 0) {
        $stdoutTail = Get-Tail -Path $stdoutLog
        $stderrTail = Get-Tail -Path $stderrLog
        throw (
            "$Lane failed with exit code $exitCode`n" +
            "stdout:`n$stdoutTail`n" +
            "stderr:`n$stderrTail`n" +
            "Logs: $stdoutLog and $stderrLog"
        )
    }
    Write-Output (
        "$Lane/$Target passed. Logs: $stdoutLog and $stderrLog"
    )
}
finally {
    $safetyErrors = [Collections.Generic.List[string]]::new()
    if ($unsafeChildPossible) {
        if ($Lane -eq "extract") {
            try {
                if ($null -eq $wslControl -and
                    -not [String]::IsNullOrWhiteSpace($wslControlFile)) {
                    $wslControl = Read-WslControl `
                        -Path $wslControlFile `
                        -AllowMissing
                }
                if ($null -eq $wslControl) {
                    throw "WSL process-group identity is unavailable"
                }
                Stop-WslGroupAndVerify -Control $wslControl
            }
            catch {
                $safetyErrors.Add(
                    "WSL cleanup was not proven: $($_.Exception.Message)"
                )
            }
        }
        try {
            if ($null -eq $child -or $null -eq $childIdentity) {
                throw "FV child identity is unavailable"
            }
            Stop-ExactProcessTree `
                -RootPid $child.Id `
                -RootIdentity $childIdentity `
                -OwnedProcesses $ownedProcesses
        }
        catch {
            $safetyErrors.Add(
                "Windows cleanup was not proven: $($_.Exception.Message)"
            )
        }
    }
    if ($null -ne $stdoutStream -or
        $null -ne $stderrStream -or
        $null -ne $stdoutCopy -or
        $null -ne $stderrCopy) {
        try {
            Complete-OutputDrains `
                -Child $child `
                -StdoutTask $stdoutCopy `
                -StderrTask $stderrCopy `
                -StdoutDestination $stdoutStream `
                -StderrDestination $stderrStream
        }
        catch {
            $safetyErrors.Add(
                "output cleanup was not proven: $($_.Exception.Message)"
            )
        }
        $stdoutStream = $null
        $stderrStream = $null
        $stdoutCopy = $null
        $stderrCopy = $null
    }
    if ($launchMarkerActive) {
        $abnormalState = if ($null -ne $watchdogReason) {
            "watchdog"
        }
        else {
            "abnormal"
        }
        $abnormalReason = if ($null -ne $watchdogReason) {
            $watchdogReason
        }
        elseif ($unsafeChildPossible) {
            "runner exited without an ordinary child completion"
        }
        else {
            "runner exited after arming but before child launch"
        }
        try {
            Write-RunMetadata `
                -Status $abnormalState `
                -Reason $abnormalReason
        }
        catch {
            $safetyErrors.Add(
                "metadata persistence failed: $($_.Exception.Message)"
            )
        }
        $finalChildPid = if ($null -eq $child) {
            $null
        }
        else {
            [Nullable[int]] $child.Id
        }
        try {
            Write-Quarantine `
                -State $abnormalState `
                -Reason $abnormalReason `
                -MetadataPath $metadataLog `
                -StdoutPath $stdoutLog `
                -StderrPath $stderrLog `
                -ChildPid $finalChildPid `
                -ChildIdentity $childIdentity `
                -WslControl $wslControlFile
        }
        catch {
            $safetyErrors.Add(
                "quarantine persistence failed: $($_.Exception.Message)"
            )
        }
        try {
            Write-LockOwner `
                -State $abnormalState `
                -ChildPid $finalChildPid `
                -ChildIdentity $childIdentity `
                -WslControl $wslControlFile
        }
        catch {
            $safetyErrors.Add(
                "lock-owner persistence failed: $($_.Exception.Message)"
            )
        }
    }

    if ($safetyErrors.Count -ne 0) {
        $retainLock = $true
    }
    if ($lockHeld -and (Test-Path -LiteralPath $LockDirectory)) {
        if ($retainLock) {
            Write-Warning (
                "retaining FV lock because safety cleanup or persistence " +
                "was not proven"
            )
        }
        else {
            Remove-ValidatedLock
        }
    }
    if ($retainLock) {
        throw (
            "FV safety state is incomplete; lock retained at " +
            "$LockDirectory. " +
            ($safetyErrors.ToArray() -join "; ")
        )
    }
}
