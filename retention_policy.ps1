# Specify the target directory
$targetDirectory = "D:\Store"

# Get all subdirectories older than 91 days
$oldFolders = Get-ChildItem -Path $targetDirectory -Directory | Where-Object { $_.LastWriteTime -le (Get-Date).AddDays(-91) }

# Remove each old folder recursively
$oldFolders | ForEach-Object {
    Remove-Item $_.FullName -Recurse -Force
}
