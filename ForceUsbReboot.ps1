# Prompt the user for confirmation
if (Read-Host "Are you sure you want to restart the computer? (y/n)" -AsSecureString | ConvertFrom-SecureString) {
    # Get the USB device path
    $usbDevicePath = "\\?\USB#VID_0000&PID_0000#6&36e6b666&00000000#{86131035-0f70-4261-8613-10350f704261}&00000000&00000001"

    # Check if the USB device is connected
    if (Test-Path -Path $usbDevicePath) {
        # Start logging
        $logPath = "C:\temp\restart_log.txt"
        Start-Transcript -Path $logPath

        # Restart the computer
        Restart-Computer -Force -BootDevice $usbDevicePath -BootDeviceType USB -ForceApplicationClose

        # Stop logging
        Stop-Transcript
    } else {
        Write-Error "USB device not found."
    }
} else {
    Write-Host "Restart canceled."
}