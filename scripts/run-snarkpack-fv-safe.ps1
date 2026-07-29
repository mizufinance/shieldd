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
    [ValidatePattern("^[A-Za-z0-9_.:/-]+$")]
    [string] $Target,

    [string] $CargoManifest =
        "crates/crypto/proof-aggregation/Cargo.toml",

    [switch] $RecoverStaleLock
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$GiB = [uint64] (1024 * 1024 * 1024)
$MinimumLaunchMemory = 8 * $GiB
$MinimumRunningMemory = 4 * $GiB
$MaximumProcessTreeRss = 6 * $GiB
$PollSeconds = 5
$LaneTimeoutSeconds = @{
    lean = 15 * 60
    rust = 15 * 60
    extract = 20 * 60
}

$RepoRoot = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$TempRoot = Join-Path $RepoRoot "tmp\snarkpack-fv-safe"
$LockDirectory = Join-Path $RepoRoot "tmp\snarkpack-fv-safe.lock"
$LockOwner = Join-Path $LockDirectory "owner.json"
$LeanRoot = Join-Path $RepoRoot `
    "crates\crypto\proof-aggregation\formal\lean-ipp"
$ExtractionScript = Join-Path $LeanRoot "scripts\extractions.py"

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
    if (-not $resolved.StartsWith(
        $prefix,
        [StringComparison]::OrdinalIgnoreCase
    )) {
        throw "path escapes repository: $resolved"
    }
    return $resolved
}

function Get-HostFreeMemory {
    try {
        $operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
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
        $processes = @(Get-CimInstance -ClassName Win32_Process)
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
    $entries = @(Get-ChildItem -LiteralPath $resolvedLock -Force)
    $unexpected = @($entries | Where-Object { $_.Name -ne "owner.json" })
    if ($unexpected.Count -ne 0) {
        throw "lock directory contains unexpected files"
    }
    if (Test-Path -LiteralPath $LockOwner) {
        Remove-Item -LiteralPath $LockOwner -Force
    }
    Remove-Item -LiteralPath $resolvedLock -Force
}

function Acquire-FvLock {
    New-Item -ItemType Directory -Path (Split-Path $LockDirectory -Parent) `
        -Force | Out-Null
    if (Test-Path -LiteralPath $LockDirectory) {
        if (-not $RecoverStaleLock) {
            throw (
                "FV lock exists at $LockDirectory; use -RecoverStaleLock only " +
                "after confirming the prior runner is gone"
            )
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
        [Nullable[int]] $ChildPid
    )
    $owner = [ordered] @{
        runner_pid = $PID
        child_pid = $ChildPid
        lane = $Lane
        target = $Target
        started_utc = [DateTime]::UtcNow.ToString("o")
    }
    [IO.File]::WriteAllText(
        $LockOwner,
        ($owner | ConvertTo-Json -Depth 3) + [Environment]::NewLine,
        [Text.UTF8Encoding]::new($false)
    )
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

function Get-ProcessTree {
    param(
        [Parameter(Mandatory = $true)]
        [int] $RootPid
    )
    try {
        $snapshot = @(Get-CimInstance -ClassName Win32_Process)
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
        [int] $RootPid
    )
    $total = [uint64] 0
    foreach ($processId in @(Get-ProcessTree -RootPid $RootPid)) {
        try {
            $process = Get-Process -Id $processId -ErrorAction Stop
            $total += [uint64] $process.WorkingSet64
        }
        catch [Microsoft.PowerShell.Commands.ProcessCommandException] {
            # A descendant may exit between the process snapshot and RSS read.
        }
    }
    return $total
}

function Stop-ExactProcessTree {
    param(
        [Parameter(Mandatory = $true)]
        [int] $RootPid
    )
    $root = Get-Process -Id $RootPid -ErrorAction SilentlyContinue
    if ($null -eq $root) {
        return
    }
    $terminator = Start-Process -FilePath "taskkill.exe" `
        -ArgumentList @("/PID", "$RootPid", "/T", "/F") `
        -WindowStyle Hidden -Wait -PassThru
    if ($terminator.ExitCode -ne 0 -and
        $null -ne (Get-Process -Id $RootPid -ErrorAction SilentlyContinue)) {
        throw "failed to terminate FV process tree rooted at $RootPid"
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

$lockHeld = $false
$child = $null
try {
    New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null
    Acquire-FvLock
    $lockHeld = $true
    Write-LockOwner
    Assert-NoFvProcesses

    $freeAtLaunch = Get-HostFreeMemory
    if ($freeAtLaunch -lt $MinimumLaunchMemory) {
        throw (
            "only $([Math]::Round($freeAtLaunch / $GiB, 2)) GiB host memory " +
            "is free; 8 GiB is required"
        )
    }

    $safeTarget = $Target -replace "[^A-Za-z0-9_.-]", "_"
    $stamp = [DateTime]::UtcNow.ToString("yyyyMMddTHHmmssZ")
    $logPrefix = Join-Path $TempRoot "$stamp-$Lane-$safeTarget"
    $stdoutLog = "$logPrefix.stdout.log"
    $stderrLog = "$logPrefix.stderr.log"
    $metadataLog = "$logPrefix.json"

    switch ($Lane) {
        "lean" {
            if (-not (Test-Path -LiteralPath $LeanRoot -PathType Container)) {
                throw "Lean root is missing: $LeanRoot"
            }
            $executable = "lake"
            $arguments = @("build", $Target)
            $workingDirectory = $LeanRoot
        }
        "rust" {
            $candidate = if ([IO.Path]::IsPathRooted($CargoManifest)) {
                $CargoManifest
            }
            else {
                Join-Path $RepoRoot $CargoManifest
            }
            $manifest = Assert-WithinRepo -Path $candidate
            if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) {
                throw "Cargo manifest is missing: $manifest"
            }
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
            if (-not (Test-Path -LiteralPath $ExtractionScript -PathType Leaf)) {
                throw "extraction script is missing: $ExtractionScript"
            }
            $wslRepo = Convert-ToWslPath -WindowsPath $RepoRoot
            $wslScript = Convert-ToWslPath -WindowsPath $ExtractionScript
            $executable = "wsl.exe"
            $arguments = @(
                "--cd", $wslRepo,
                "--exec", "env",
                "CARGO_BUILD_JOBS=1",
                "LEAN_NUM_THREADS=1",
                "RAYON_NUM_THREADS=1",
                "python3", $wslScript,
                "regenerate",
                "--graph", $Target,
                "--update-manifest"
            )
            $workingDirectory = $RepoRoot
        }
    }

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
        $child = Start-Process -FilePath $executable `
            -ArgumentList $arguments `
            -WorkingDirectory $workingDirectory `
            -RedirectStandardOutput $stdoutLog `
            -RedirectStandardError $stderrLog `
            -WindowStyle Hidden `
            -PassThru
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
    Write-LockOwner -ChildPid $child.Id

    $started = [DateTime]::UtcNow
    $stopReason = $null
    while (-not $child.HasExited) {
        Start-Sleep -Seconds $PollSeconds
        $child.Refresh()
        if ($child.HasExited) {
            break
        }
        try {
            $free = Get-HostFreeMemory
            $rss = Get-ProcessTreeRss -RootPid $child.Id
        }
        catch {
            $stopReason = "monitoring unavailable: $($_.Exception.Message)"
            break
        }
        if ($free -lt $MinimumRunningMemory) {
            $stopReason = (
                "host free memory fell to " +
                "$([Math]::Round($free / $GiB, 2)) GiB"
            )
            break
        }
        if ($rss -gt $MaximumProcessTreeRss) {
            $stopReason = (
                "FV process-tree RSS reached " +
                "$([Math]::Round($rss / $GiB, 2)) GiB"
            )
            break
        }
        $elapsed = ([DateTime]::UtcNow - $started).TotalSeconds
        if ($elapsed -ge $LaneTimeoutSeconds[$Lane]) {
            $stopReason = "$Lane exceeded $($LaneTimeoutSeconds[$Lane]) seconds"
            break
        }
    }

    if ($null -ne $stopReason) {
        Stop-ExactProcessTree -RootPid $child.Id
        [IO.File]::WriteAllText(
            $metadataLog,
            (
                [ordered] @{
                    lane = $Lane
                    target = $Target
                    status = "terminated"
                    reason = $stopReason
                    stdout = $stdoutLog
                    stderr = $stderrLog
                } | ConvertTo-Json -Depth 3
            ) + [Environment]::NewLine,
            [Text.UTF8Encoding]::new($false)
        )
        throw (
            "$stopReason; lane is quarantined to CI for this session. " +
            "Logs: $stdoutLog and $stderrLog"
        )
    }

    $child.WaitForExit()
    $exitCode = $child.ExitCode
    [IO.File]::WriteAllText(
        $metadataLog,
        (
            [ordered] @{
                lane = $Lane
                target = $Target
                status = if ($exitCode -eq 0) { "passed" } else { "failed" }
                exit_code = $exitCode
                stdout = $stdoutLog
                stderr = $stderrLog
            } | ConvertTo-Json -Depth 3
        ) + [Environment]::NewLine,
        [Text.UTF8Encoding]::new($false)
    )
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
    if ($null -ne $child -and -not $child.HasExited) {
        Stop-ExactProcessTree -RootPid $child.Id
    }
    if ($lockHeld -and (Test-Path -LiteralPath $LockDirectory)) {
        Remove-ValidatedLock
    }
}
