echo off

rem setting directory paths in variable
set documentPath=%userprofile%\documents\
set downloadPath=%userprofile%\downloads\
set desktopPath=%userprofile%\desktop\
set picturesPath=%userprofile%\Pictures
set backupDestination=%picturesPath%

mkdir %picturesPath%\backup
rem change directory to backup folder 
mkdir %picturesPath%\backup\downloads %picturesPath%\backup\documents %picturesPath%\backup\desktop

xcopy %documentPath%\* %backupDestination%\backup\documents
xcopy %downloadPath%\* %backupDestination%\backup\downloads
xcopy %desktopPath%\* %backupDestination%\backup\desktop

echo files backup successfull