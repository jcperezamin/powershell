New-Item -Path 'C:\temp\jc' -ItemType Directory
Get-Disk |
Where-Object PartitionStyle -eq 'RAW' |
Initialize-Disk -PartitionStyle MBR -PassThru |
New-Partition -AssignDriveLetter -UseMaximumSize |
Format-Volume -FileSystem NTFS -Confirm:$false
Get-Partition -DiskNumber 2 | Set-Partition -NewDriveLetter G
New-Item -Path 'G:\MWS' -ItemType Directory
