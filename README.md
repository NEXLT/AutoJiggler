# AutoJiggler 🐭💤

![AutoJiggler](https://img.shields.io/badge/AutoJiggler-PowerShell-brightgreen)

Welcome to **AutoJiggler**, a lightweight PowerShell-based mouse jiggler designed to keep your computer active. This tool prevents status changes in applications like Microsoft Teams, Slack, and other productivity tools. With AutoJiggler, you can stay available and engaged without interruptions.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Support](#support)

## Features

- **Lightweight**: Minimal resource usage ensures your system runs smoothly.
- **Easy to Use**: Simple PowerShell script that anyone can run.
- **Customizable**: Adjust settings to fit your needs.
- **Compatibility**: Works with Windows and integrates seamlessly with productivity apps.

## Installation

To get started with AutoJiggler, download the latest release from the [Releases section](https://github.com/NEXLT/AutoJiggler/releases). After downloading, execute the script to start using AutoJiggler.

### Step-by-Step Installation

1. Visit the [Releases section](https://github.com/NEXLT/AutoJiggler/releases).
2. Download the latest version of the AutoJiggler script.
3. Open PowerShell as an administrator.
4. Navigate to the directory where you downloaded the script.
5. Run the script using the command: `.\AutoJiggler.ps1`.

## Usage

Once installed, using AutoJiggler is straightforward. Simply run the script, and it will start jiggling your mouse cursor at specified intervals. This action prevents your computer from going idle, ensuring your status remains "available" in apps like Teams and Slack.

### Starting AutoJiggler

To start AutoJiggler, execute the following command in PowerShell:

```powershell
.\AutoJiggler.ps1
```

### Stopping AutoJiggler

To stop the jiggler, simply close the PowerShell window or press `Ctrl + C` in the PowerShell console.

## Configuration

AutoJiggler comes with several configurable options to tailor its behavior to your preferences.

### Configuration Options

- **Jiggle Interval**: Set how often the mouse should jiggle. The default is every 60 seconds.
- **Jiggle Mode**: Choose between different jiggle patterns, such as random or fixed movements.

### Example Configuration

You can modify the script directly to adjust the jiggle interval. Open the `AutoJiggler.ps1` file in a text editor and look for the following line:

```powershell
$interval = 60 # in seconds
```

Change the value to your desired interval.

## Contributing

We welcome contributions to improve AutoJiggler! If you have ideas, suggestions, or bug fixes, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Make your changes.
4. Submit a pull request with a clear description of your changes.

## License

AutoJiggler is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Support

If you have any questions or need assistance, feel free to open an issue in the repository. You can also check the [Releases section](https://github.com/NEXLT/AutoJiggler/releases) for updates and new features.

---

Thank you for using AutoJiggler! We hope it helps you stay productive and engaged without interruptions. If you find this tool useful, consider giving it a star on GitHub!