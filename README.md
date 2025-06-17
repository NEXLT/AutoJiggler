# AutoJiggler 🖱️

A lightweight PowerShell-based mouse jiggler to keep your computer active and prevent status changes in applications like Microsoft Teams, Slack, and other productivity tools.

## 🚀 Features

- **Zero Installation**: Pure PowerShell script - no additional software required
- **Minimal Movement**: Moves cursor just 1 pixel to avoid disrupting your work
- **Lightweight**: Uses minimal system resources
- **Configurable**: Easy to adjust timing and behavior
- **Windows Native**: Leverages built-in Windows APIs
- **Stealth Mode**: Barely noticeable cursor movement

## 📋 Requirements

- Windows 10/11 (PowerShell 5.1+ or PowerShell Core)
- Administrator privileges (recommended for reliable operation)

## 🔧 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/nruizneiman/AutoJiggler.git
   cd AutoJiggler
   ```

2. **Run the script:**
   ```powershell
   .\MyMoneyDontJiggleJiggle.ps1
   ```

## 💻 Usage

### Basic Usage
Open PowerShell as Administrator and run:
```powershell
.\MyMoneyDontJiggleJiggle.ps1
```

### Manual Execution
Copy and paste this code directly into PowerShell:
```powershell
Add-Type -AssemblyName System.Windows.Forms
Write-Host "Auto-Jiggler execution started. Please hit Ctrl. + C to stop the execution."
while($true) {
    $pos = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 1), $pos.Y)
    Start-Sleep -Milliseconds 100
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X), $pos.Y)
    Write-Host "Jiggled at $(Get-Date -Format 'HH:mm:ss')"
    Start-Sleep -Seconds 60
}
}
```

### Stop the Script
Press `Ctrl + C` to stop the mouse jiggler.

## ⚙️ Customization

### Adjust Timing
Change the sleep interval (default: 60 seconds):
```powershell
Start-Sleep -Seconds 30  # Jiggle every 30 seconds
```

### Modify Movement Pattern
Change movement distance or direction:
```powershell
# Vertical movement
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($pos.X, ($pos.Y + 1))

# Larger movement
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($pos.X + 5), $pos.Y)
```

## 🏃‍♂️ Auto-Start Options

### Option 1: Startup Folder
1. Press `Win + R`, type `shell:startup`, press Enter
2. Create a shortcut to your PowerShell script
3. Set shortcut to run as administrator

### Option 2: Task Scheduler
1. Open Task Scheduler
2. Create Basic Task
3. Set trigger to "At startup"
4. Set action to start PowerShell with your script
5. Enable "Run with highest privileges"

### Option 3: Batch File Wrapper
Create `AutoJiggler.bat`:
```batch
@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0MyMoneyDontJiggleJiggle.ps1"
pause
```

## 🛡️ Security Considerations

- **Execution Policy**: You may need to set PowerShell execution policy:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- **Antivirus**: Some antivirus software may flag mouse automation tools. Add an exception if needed.

- **Admin Rights**: Running as administrator ensures reliable cursor control.

## 🎯 Use Cases

- **Remote Work**: Keep Microsoft Teams, Slack, or Zoom status active
- **Presentations**: Prevent screen savers during long presentations  
- **Monitoring**: Keep monitoring dashboards active
- **Downloads**: Prevent sleep mode during large file transfers
- **Development**: Keep IDE and development tools active

## 📝 Troubleshooting

### Script Won't Run
- Check PowerShell execution policy: `Get-ExecutionPolicy`
- Run PowerShell as Administrator
- Ensure Windows Forms assembly is available

### Movement Not Working
- Try running as Administrator
- Check if another application is blocking cursor control
- Verify Windows Forms assembly loaded correctly

### High CPU Usage
- Increase sleep intervals between jiggles
- Check for conflicting mouse software

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup
1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Test thoroughly on different Windows versions
5. Submit a pull request

## ⚠️ Disclaimer

This tool is designed for legitimate productivity purposes. Please use responsibly and in accordance with your organization's policies. The authors are not responsible for any misuse of this software.

## 🔗 Related Projects

- [MouseJiggler](https://github.com/arkane-systems/mousejiggler) - C# WinForms version
- [Caffeine](https://github.com/collective/caffeine) - Cross-platform keep-awake utility
- [PowerToys Awake](https://docs.microsoft.com/en-us/windows/powertoys/awake) - Microsoft's official keep-awake tool

## 📞 Support

If you encounter any issues or have questions:
1. Check the [Issues](https://github.com/nruizneiman/AutoJiggler/issues) page
2. Create a new issue with detailed information
3. Include your Windows version and PowerShell version

---

**⭐ If this project helped you, please give it a star!**
