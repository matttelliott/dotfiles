# Ares

## webOS TV CLI

https://webostv.developer.lge.com/develop/tools/cli-introduction

## CLI Introduction

The webOS TV CLI (Command Line Interface) provides a collection of commands used for creating, packaging, installing, and launching web apps in the command line environment. The CLI allows you to develop and test your app without using a specific IDE.

## Features

With the webOS TV CLI, you can install your apps on a target device, such as the simulator, emulator, or webOS TV device. Besides, you can retrieve, run, terminate, and remove the apps installed on the target device. You can use the CLI during any of the following stages of the development process:

The development process with the CLI

## Commands

The following table shows the commands you could use:

| Commands          | Descriptions                                                                      |
| ----------------- | --------------------------------------------------------------------------------- |
| ares              | Provides the help menu for using the ares commands                                |
| ares-generate     | Creates a web app from a template.                                                |
| ares-package      | Creates and analyses an app package file.                                         |
| ares-setup-device | Manages the target devices.                                                       |
| ares-install      | Installs an app on the target device.                                             |
| ares-launch       | Runs or terminates the web app.                                                   |
| ares-inspect      | Runs the Web Inspector for web app debugging.                                     |
| ares-server       | Runs the Web server for testing local app files.                                  |
| ares-novacom      | Gets a private key from webOS TV for the Developer Mode app.                      |
| ares-device-info  | Retrieves a device's system information and monitors the device's resource usage. |
| ares-extend-dev   | Extends the session time of the developer mode for the Developer Mode app.        |

# CLI Installation

IMPORTANT
If you have installed webOS OSE CLI (@webosose/ares-cli) with npm, you first need to remove it using the following command before installing webOS TV CLI.

```bash
npm uninstall -g @webosose/ares-cli
```

Follow the procedure below to install CLI.

Prepare for installation
Check if the system requirements are met before starting installation. CLI may work even if they are not met but stability is not guaranteed.

System requirements
OS Requirement
Windows Windows 7 or higher (64bit only)
Linux Ubuntu 16.04 or higher (64bit only)
macOS high sierra (10.13) or higher (64bit only)
Step 1. Download CLI
Download the CLI (V1.12.3) corresponding to your OS and upzip it.

Linux 64-bit
webOS_TV_CLI_linux_1.12.3-j26.tgz (18M)

Windows 64-bit
webOS_TV_CLI_win_1.12.3-j26.zip (19M)

macOS 64-bit
webOS_TV_CLI_mac_1.12.3-j26.tgz (16M)

Step 2. Check the environment variable
Check the LG_WEBOS_TV_SDK_HOME variable using theecho command.

WindowsLinux or macOS
echo %LG_WEBOS_TV_SDK_HOME%
If environment variable LG_WEBOS_TV_SDK_HOMEalready exists, its path will be output.

Step 3. Configure the environment variables
Configure the environment variables. If environment variable LG_WEBOS_TV_SDK_HOMEalready exists, you can skip the configuration and will just replace the existing CLIdirectory with the new one.

WindowsLinux or macOS
If environment variable LG_WEBOS_TV_SDK_HOME already exists,
Remove the existing CLI directory in the path output in Step 2.
Place the new CLI directory, unzipped in Step 1, in the path output in Step 2.
If environment variable LG_WEBOS_TV_SDK_HOME does not exist,
Create webOS_TV_SDK directory in the desired path.
Place the CLI directory, unzipped in Step 1, under the webOS_TV_SDK directory.
Configure the environment variables as in the following. Replace "YOUR_PATH" with the path you created the webOS_TV_SDK directory.
// Setting the LG_WEBOS_TV_SDK_HOME variable to the parent directory of CLI

> setx /m LG_WEBOS_TV_SDK_HOME "C:\YOUR_PATH\webOS_TV_SDK"

// Setting the WEBOS_CLI_TV variable to the bin directory of CLI

> setx /m WEBOS_CLI_TV "%LG_WEBOS_TV_SDK_HOME%\CLI\bin"

// Adding the bin directory of CLI to the PATH variable

> setx /m PATH "%PATH%;%WEBOS_CLI_TV%"
> Restart the command window or your PC to make the changes take effect.
> Step 4. Verify the installation
> Verify the installation by executing the ares –V command. If the installation is successful, you will see the version of webOS TV CLI as a result.

$ ares -V
webOS TV CLI Version: 1.12.0-j41-k
Example
The following is an example of environment variable LG_WEBOS_TV_SDK_HOME and file tree on Linux.

$ echo $LG_WEBOS_TV_SDK_HOME
/home/user/tool/webOS_TV_SDK
/home/user/tool/
├── webOS_TV_SDK
│ ├── CLI
│ │ ├── bin
│ │ └── ...
│ ├── Simulator
│ │ ├── webOS_TV_22_Simulator_1.0.0
│ │ │ ├── webOS_TV_22_Simulator_1.0.0.appimage
│ │ │ └── ...
