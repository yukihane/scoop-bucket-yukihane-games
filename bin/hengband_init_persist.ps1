Param($execname)

.\bin\hengband_persist_dirs.ps1

if (!(Test-Path("$persist_dir"))) {
  New-Item "$persist_dir" -type directory
}

if (!(Test-Path("$persist_dir\$execname.INI"))) {
  New-Item "$persist_dir\$execname.INI" -type file
}

foreach($dirname in $persist_dirs) {
  if (!(Test-Path("$persist_dir\$dirname"))) {
    New-Item "$persist_dir\$dirname" -type directory
  }
}
