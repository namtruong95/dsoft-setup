$cerUrl = "https://raw.githubusercontent.com/namtruong95/dsoft-setup/main/RootCA.cer"
$cerPath = "C:\DsoftRootCA.cer"

Invoke-WebRequest -URI $cerUrl -OutFile $cerPath
Import-Certificate -FilePath $cerPath -CertStoreLocation Cert:\LocalMachine\Root