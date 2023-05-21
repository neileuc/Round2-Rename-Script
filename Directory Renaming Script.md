# Directory Renaming Script
>> Author, Neil Chamberlain Urwin - Portsmouth Onsite Support - Nurwin@wetafx.co.nz - 022 050 4722
 
## Purpose:
This script has been made in order to rename files within a directory with like named files, with a new name and with correct number sequencing.
## Reasoning:
The reason why I have chosen powershell as the script language is due to the fact its POSIX complaint  (with some minor preinstallations on macOS and Linux) and due to it being easier for someone who isn't confident in scripting in breaking down what is happening - should there need to be future adjustments and extentions.

## Features
- User defined Directory path to rename
- Only like filetype's renamed
- Friendly script for further editing

## Github repo
[Neileuc GitHub Repo](https://github.com/neileuc/Round2-Rename-Script) -Updated 21/05/2023
## Windows Operating system Installation
please go to the repo and download:
```sh
Set execution.ps1
Rename files.ps1
```
## How to execute on windows
Please go to where your the files have downloaded, typically under downloads - C:\Users\%USER%\Downloads
Right click the **Set execution** script and run with power shell, when prompted, enter:
```sh
Unrestricted
```
This is so you can execute the script due to it not being a signed installion, You can now right click:
```sh 
Rename files.ps1
```
![windows run](https://i.ibb.co/9VXLWZB/windows.png)
and run with powershell where you will go through the on screen prompts.

## Ubuntu Operating system Installation
please go to the repo and download:
```sh 
Rename files.ps1
```
Please check where your default browser is saving the files to, as you will need to go to the folder and extract the zip to later use this.

Next please run the following to install powershell **( Note, Edit the version for your install ie. 22.04/18.04 )**
Open **Terminal**
```sh
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
```

Now you can launch powershell from the terminal window entering:
```sh 
pwsh
```
## How to execute in Ubuntu
launch powershell with the command above, and change directory to where the script unzipped to.
![ubuntuexample](https://i.ibb.co/rbXMwD9/ubuntu-example.png)

To execute, run the following, and go through the prompts on screen.
```sh
./rename_files.ps1
```


## Mac Operating system Installation
please go to the repo and download:
```sh
Rename files.ps1
```
Please check where your default browser is saving the files to, as you will need to go to the folder and extract the zip to later use this.

Next please run the following to install powershell **( Note, Edit the version for your install ie. 22.04/18.04 )**
```sh

```

## Developers
please open the script with your preffered editor or powershell ISE and you will see each block is commented for breaking down each procedure.
