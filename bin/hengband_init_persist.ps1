Param($execname)

if (!(Test-Path("$persist_dir"))) {
  New-Item "$persist_dir" -type directory
}
if (!(Test-Path("$persist_dir\Hengband.INI"))) {
  New-Item "$persist_dir\$execname.INI" -type file
}
if (!(Test-Path("$persist_dir\apex"))) {
  New-Item "$persist_dir\apex" -type directory
}
if (!(Test-Path("$persist_dir\bone"))) {
  New-Item "$persist_dir\bone" -type directory 
}
if (!(Test-Path("$persist_dir\data"))) {
  New-Item "$persist_dir\data" -type directory 
}
if (!(Test-Path("$persist_dir\save"))) {
  New-Item "$persist_dir\save" -type directory 
}
if (!(Test-Path("$persist_dir\user"))) {
  New-Item "$persist_dir\user" -type directory 
}
