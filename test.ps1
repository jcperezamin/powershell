#Change CD drive letter
$drv = Get-WmiObject win32_volume -filter 'DriveLetter = "E:"'
$drv.DriveLetter = "Z:"
$drv.Put() | out-null
New-Item -Path 'C:\temp\jc' -ItemType Directory
Initialize-Disk 2 -PartitionStyle MBR
Get-Disk -Number 2 | New-Partition -UseMaximumSize -DriveLetter E | Format-Volume -FileSystem NTFS -NewFileSystemLabel "IFS_HOME" -Confirm:$False 
New-Item -Path 'E:\IFS\InstanceName\MWS' -ItemType Directory
#Disable Automatic Windows Updates
Add-MpPreference -ExclusionPath "E:\IFS\InstanceName\MWS"
