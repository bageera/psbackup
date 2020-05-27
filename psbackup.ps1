$local      = Get-Location;
$today      = Get-Date -format "yyyy-MM-dd";
#will grab example folder
$sourceLog  = "c:\Users\Desktop\EXAMPLE_DIR/";

$backupLoc  = "D:\Backups\backup_" + $today;


#Create backup folder if folder does not exists. if exists just copy to backup dir
if (!(test-path $backupLoc))
{
    mkdir $($backupLoc) ;
    Copy-Item -Path "$sourceLog" -Destination "$backupLoc" -Recurse;
} else {
    Copy-Item -Path "$sourceLog" -Destination "$backupLoc" -Recurse;
}

