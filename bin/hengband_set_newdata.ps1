.\bin\hengband_persist_dirs.ps1

foreach($d in $persist_dirs) {
    Copy-Item -Force -Recurse -Path "$dir\lib\$d.bak\*" -Destination "$persist_dir\$d"
    Remove-Item -Path "$dir\lib\$d.bak" -Force -Recurse 
}
