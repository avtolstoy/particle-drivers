$path = $env:APPVEYOR_BUILD_FOLDER;
mkdir deploy;
Copy-Item $path\lowcdc\Release\* $path\deploy -recurse ;
7z a windows-device-drivers.zip $path\deploy\* ;

exit
