New-Item -Path 'C:\temp\jc' -ItemType Directory
Get-Disk |
Where-Object PartitionStyle -eq 'RAW' |
Initialize-Disk -PartitionStyle MBR -PassThru |
New-Partition –DiskNumber 2 -Size 200gb -DriveLetter E |
Format-Volume -DriveLetter E -FileSystem NTFS -Confirm:$false
New-Item -Path 'E:\MWS' -ItemType Directory
