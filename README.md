# Setup self signed certificate
## Window
- Open powershell as administrator

![open powershell](https://github.com/namtruong95/dsoft-setup/blob/main/window/images/open-powershell.png?raw=true)

- Step 1: allow powershell execute script
```bash
Set-ExecutionPolicy RemoteSigned
```
A => Enter

![allow exe ps script](https://github.com/namtruong95/dsoft-setup/blob/main/window/images/allow-execute-script.png?raw=true)

- Step 2: Download script from link:

[Download script here](https://raw.githubusercontent.com/namtruong95/dsoft-setup/main/window/ssl.ps1)

- Step 3: Execute script for setup self signed certificate 
```bash
& "<path ps1 file>"
# example
& "C:\Users\namtruong\Downloads\ssl.ps1"
```

![run ps script](https://github.com/namtruong95/dsoft-setup/blob/main/window/images/exe-ps-script.png?raw=true)

## MacOS

- Step 1: Open terminal

- Step 2: Run command, enter root password

```bash
sudo curl -fsSL https://raw.githubusercontent.com/namtruong95/dsoft-setup/main/macos/ssl.sh | sudo bash
```

![run ps script](https://github.com/namtruong95/dsoft-setup/blob/main/macos/images/exe-script.png?raw=true)

- Done

![run ps script](https://github.com/namtruong95/dsoft-setup/blob/main/macos/images/done.png?raw=true)

## Linux (Ubuntu)

TODO: