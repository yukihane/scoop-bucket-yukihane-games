.\bin\hengband_persist_dirs.ps1

$newdirs = $persist_dirs | ForEach-Object {
    "$dir\lib\$_"
}

foreach ( $i in $newdirs ) {
    Move-Item "$i" "$i.bak"
}