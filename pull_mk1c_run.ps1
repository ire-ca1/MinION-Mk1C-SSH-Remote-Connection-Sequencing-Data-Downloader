# Set the MinION connection parameters
$MinION = "MC-115691"
$SshUser = "minit"
$SshPort = 22

# Test connectivity to the MinION SSH port
Test-NetConnection -ComputerName $MinION -Port $SshPort

# Connect to the MinION Mk1C
ssh -p $SshPort "$SshUser@$MinION"
# Change to the sequencing data directory
cd /data

# List files and directories with detailed information
ls -lah
# Set the sequencing run folder name
$RunFolder = "RUN_FOLDER_NAME"

# Set the local download destination
$Destination = Join-Path $env:USERPROFILE "Desktop"

# Copy the selected sequencing folder from the MinION
scp -P $SshPort -r "${SshUser}@${MinION}:/data/${RunFolder}" "$Destination"