#Change execution policy on windows OS
#Set-ExecutionPolicy -Scope CurrentUser

#Inform user to elevate and instruct how to stop
Write-Host " ----------Run file as administrator / elevated permissions where possible---------- " -BackgroundColor Red -Foregroundcolor White
Start-Sleep -Seconds 3
Write-Host "To stop running the script at anytime" -Foregroundcolor Yellow 
Start-Sleep -Seconds 1
Write-Host "Microsoft windows OS: Control + C" -Foregroundcolor Green 
Start-Sleep -Seconds 1
Write-Host "MAC OSX: Commands + C" -Foregroundcolor Green 
Start-Sleep -Seconds 1
Write-Host "Linux: Control + C" -Foregroundcolor Green 
Start-Sleep -Seconds 1

#Warn user
Write-Host "*******************************************************************************************************************************************
The purpose of this tool is to rename Files, please note its advised you back up the files in a seperate directory incase of a loss of data
********************************************************************************************************************************************" -BackgroundColor Red -Foregroundcolor White
Start-Sleep -Seconds 5

#Gather directory from user
$InputDirectory = Read-Host -Prompt "Enter the input directory path (example: C:\Path\To\Directory\With\Files to rename) " 

Write-Host "--------------------------------------------------------------------------------------------------------------------------------" -ForegroundColor Yellow

#Move to directory and print to user
Set-Location -Path $InputDirectory 
write-host "moving to" $pwd -Foregroundcolor Green
Start-Sleep 3

Write-Host "--------------------------------------------------------------------------------------------------------------------------------" -ForegroundColor Yellow

#Ask user for Old Filename and File type - to rename
Write-Host "Naming sequence <Name>_<Name>_<number> " -Foregroundcolor Yellow
Start-Sleep 3
Write-Host "Examples: Canon OR Inmarsat_file OR Picture10 " -Foregroundcolor Yellow
Start-Sleep 3

$OldFile = Read-Host -Prompt "What is the name/word at the start of the file you want to rename? (as above) " 
$OldFT = Read-Host -Prompt "What filetype is it? (example: .jpg / .png / .txt) "

Write-Host "-----------------------------------------------------------------------------------------------------------------------------" -ForegroundColor Yellow

#Ask user for New Filename#
$NewFile = Read-Host -Prompt "what is the new name you want? " 
$NewFT = Read-Host -Prompt "what file type do you want it to be? (example: .jpg / .png / .txt)? "

Write-Host "-----------------------------------------------------------------------------------------------------------------------------" -ForegroundColor Yellow

#Create Counter start point and Padded format
$Counter = 1
$PaddedCounter = "{0:D2}" -f $Counter

#Search Dir for Old file + Old filetype, each object renamed with seuenced number.
Get-ChildItem -Path $PWD -Recurse -Include "$OldFile*$OldFT" | ForEach-Object {
    $NewName = "{0}_{1}{2}" -f $NewFile, $PaddedCounter, $NewFT
    $NewPath = Join-Path -Path $pwd -ChildPath $NewName
    Move-item -Path $_.FullName -Destination $NewName
    $Counter++
    $PaddedCounter = "{0:D2}" -f $Counter
}