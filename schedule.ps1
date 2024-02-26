# Schedule the script to run daily at midnight
$taskAction = New-ScheduledTaskAction -Execute "Powershell" -Argument "-NoProfile -ExecutionPolicy Bypass -File 'C:\retention_policy.ps1'"
$taskTrigger = New-ScheduledTaskTrigger -Daily -At "00:00"
Register-ScheduledTask -Action $taskAction -Trigger $taskTrigger -TaskName "DeleteOldFolders"