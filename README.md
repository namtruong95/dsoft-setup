# Setup self certificate for window
- Open powershell as administrator

![open powershell](https://github.com/namtruong95/dsoft-setup/blob/main/open-powershell.png?raw=true)

## allow run script
```bash
Set-ExecutionPolicy RemoteSigned
```

A => Enter
## Run script for setup ssl
```bash
& "<path ps1 file>"
# example
& "C:\Users\namtruong\Documents\ssl.ps1"
```
