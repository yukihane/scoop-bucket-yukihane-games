Param($execname)

.\bin\hengband_persist_dirs.ps1

$backupfiles = $persist_dirs + "$execname.INI"

$backupfiles = $backupfiles | ForEach-Object {
    "$persist_dir\$_"
}

if (!(Test-Path("$persist_dir"))) {
    return
}

if (Test-Path("$persist_dir\backup0.zip")) {
  Move-Item -Force "$persist_dir\backup0.zip" "$persist_dir\backup1.zip"
}

Compress-Archive -Path $backupfiles -DestinationPath $persist_dir\backup0.zip