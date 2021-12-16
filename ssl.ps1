Write-Host "Start download certificate..."
$cerUrl = "https://raw.githubusercontent.com/namtruong95/dsoft-setup/main/RootCA.cer"
$cerPath = "C:\DsoftRootCA.cer"
Invoke-WebRequest -URI $cerUrl -OutFile $cerPath
Write-Host "Downloaded certificate completed!"

Write-Host "`n--------------------"
Write-Host "Start import certificate..."
Import-Certificate -FilePath $cerPath -CertStoreLocation Cert:\LocalMachine\Root
Write-Host "Imported certificate completed!"

Write-Host "`n--------------------"
Write-Host "Start write host value...."
$hostValue = "`n
192.168.1.108 dsoft.dev
192.168.1.108 minio.dsoft.dev
192.168.1.108 audiobook.dsoft.dev
192.168.1.108 admin.audiobook.dsoft.dev
192.168.1.108 api.audiobook.dsoft.dev
192.168.1.108 sustech.dsoft.dev
192.168.1.108 api.sustech.dsoft.dev"

$hostsFile = "C:\Windows\System32\drivers\etc\hosts"

Function WriteFile
{
   Param ([string]$logstring)

   Add-content $hostsFile -value $logstring
}

WriteFile($hostValue)
Write-Host "writed hosts completed!"

Write-Host "`n--------------------"