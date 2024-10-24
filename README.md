# ForceUsbReboot
**A PowerShell script to forcibly restart a computer and boot from a connected USB device.**

## **Usage:**

**Direct link to run the script:**

* You can  download and run the script directly using `Invoke-WebRequest` or `Invoke-RestMethod`:
    
	Open start menu and search for powershell in Windows 10 or terminal in Windows11 and run it it
paste the following line and press enter
```powershell
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ahmedsamy31/ForceUsbReboot/main/ForceUsbReboot.ps1" -OutFile "ForceUsbReboot.ps1"
    .\ForceUsbReboot.ps1
	```


## Description:

  * **Forced Restart:** Restarts the computer immediately, closing all running applications.
  * **USB Boot:** Sets the boot device to USB, ensuring the system starts from the connected USB device.
  * **User Confirmation:** Prompts the user for confirmation before restarting.
  * **Logging:** Records the script execution for auditing and troubleshooting.

**Requirements:**

  * PowerShell 5.0 or later

**Note:**

  * Ensure that a USB device is connected to the computer before running the script.
  * The script assumes the USB device is connected as the first boot device. If you have multiple USB devices, you may need to adjust the script to target a specific device.


## ## Contributing:

Contributions to this project are welcome! If you find a bug, have an idea for an improvement, or want to contribute in any other way, please feel free to open an issue or submit a pull request.

### License:

This project is licensed under the [MIT License](https://www.google.com/url?sa=E&source=gmail&q=https://opensource.org/licenses/MIT) - see the [LICENSE.md](LICENSE.md) file for details.