# PostgreSQL Installation Script for Windows
# Run this as Administrator

Write-Host "Starting PostgreSQL installation..." -ForegroundColor Green

# Download PostgreSQL
$installerUrl = "https://get.enterprisedb.com/postgresql/postgresql-16.1-1-windows-x64.exe"
$installerPath = "$env:TEMP\postgresql-installer.exe"

Write-Host "Downloading PostgreSQL 16..." -ForegroundColor Yellow
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -ErrorAction Stop

Write-Host "PostgreSQL downloaded successfully!" -ForegroundColor Green
Write-Host "Installer location: $installerPath" -ForegroundColor Cyan

Write-Host "`nTo complete the installation:" -ForegroundColor Yellow
Write-Host "1. Run as Administrator: Start-Process -FilePath '$installerPath' -Wait"
Write-Host "2. Or double-click the installer file directly"
Write-Host "3. During installation, set password to 'postgres' when prompted"
Write-Host "4. Keep port as 5432"
Write-Host "5. Install Stack Builder to add PostGIS extension"
Write-Host "`nAfter installation, test with: psql --version"
