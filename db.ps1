#Change CD drive letter
#$drv = Get-WmiObject win32_volume -filter 'DriveLetter = "E:"'
#$drv.DriveLetter = "Z:"
#$drv.Put() | out-null
#New-Item -Path 'C:\temp\jc' -ItemType Directory
#Initialize-Disk 2 -PartitionStyle MBR
#Initialize-Disk 3 -PartitionStyle MBR
#Get-Disk -Number 2 | New-Partition -UseMaximumSize -DriveLetter E | Format-Volume -FileSystem NTFS -NewFileSystemLabel "ORADATA" -Confirm:$False
#Get-Disk -Number 3 | New-Partition -UseMaximumSize -DriveLetter F | Format-Volume -FileSystem NTFS -NewFileSystemLabel "ORABKP" -Confirm:$False 
#New-Item -Path 'E:\Oracle' -ItemType Directory
#New-Item -Path 'F:\Oracle\FRA' -ItemType Directory
#Disable Automatic Windows Updates
Add-MpPreference -ExclusionPath "E:\Oracle"
Add-MpPreference -ExclusionPath "E:\Oracle\FRA"
