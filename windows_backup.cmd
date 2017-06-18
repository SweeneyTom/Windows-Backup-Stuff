rem
rem windows_backup.cmd - Backup files to external disk on G:
rem
rem These directions assume this file lives in the windows_backup directory.
rem
rem Change \Users\MyHomeDir to the appropriate directory.  Add directories as
rem you see fit.
rem
rem Change 'G:' in TO_DIR below if that is not the appropriate drive letter for
rem your backup disk.
rem
rem invoke with:
rem      cd windows_backup
rem      windows_backup.cmd > backuplog.txt 2>&1
rem
rem      use windows Tail to monitor progress
rem 

rem   /C           Continues copying even if errors occur.
rem   /E           Copies directories and subdirectories, including empty ones.
rem   /F           Displays full source and destination file names while copying.
rem   /I           If destination does not exist and copying more than one file,
rem                assumes that destination must be a directory.
rem   /H           Copies hidden and system files also.
rem   /K           Copies attributes. Normal Xcopy will reset read-only attributes.
rem   /R           Overwrites read-only files.
rem   /V           Verifies each new file.
rem   /Y           Suppresses prompting to confirm you want to overwrite an
rem                existing destination file.
rem
set TO_DIR="G:\WINDOWS_BACKUPS"
rem
xcopy "C:\Users\MyHomeDir\My Documents" "%TO_DIR%\Users\MyHomeDir\My Documents" /C /E /F /I /H /K /R /V /Y
xcopy "C:\Users\MyHomeDir\My Photos" "%TO_DIR%\Users\MyHomeDir\My Photos" /C /E /F /I /H /K /R /V /Y
xcopy "C:\Users\MyHomeDir\Videos" "%TO_DIR%\Users\MyHomeDir\Videos" /C /E /F /I /H /K /R /V /Y
xcopy "C:\Program Files\iPod" "%TO_DIR%\Program Files\iPod" /C /E /F /I /H /K /R /V /Y
xcopy "C:\Program Files\iTunes" "%TO_DIR%\Program Files\iTunes" /C /E /F /I /H /K /R /V /Y
rem
