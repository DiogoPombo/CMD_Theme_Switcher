# 🎨 CMD Theme Switcher


A simple yet stylish utility to **switch Command Prompt (CMD) themes** on Windows, powered by PowerShell with a graphical interface.


---


## 🚀 Features


- Quickly toggle between CMD themes:
  - **STANDARD** → Restores the default CMD theme.
  - **BLACK** → Black background with white text (`color 07`).
  - **LIGHT** → White background with black text (`color f0`).
  - **CANCEL** → Closes without making changes.
- User-friendly graphical interface with buttons.
- Automatically creates the required registry key (`HKCU:\Software\Microsoft\Command Processor`).
- Single `.CMD` script — no extra files needed.


---


## 📦 Installation


1. Download or clone this repository:
   ```bash
   git clone https://github.com/DiogoPombo/CMD_Theme_Switcher
- Place the CMD Theme Switcher.CMD file in a convenient folder.
- Run it by double-clicking



🖥️ Requirements
- Windows 10 or later
- PowerShell (pre-installed on Windows)
- Script execution allowed (already handled with ExecutionPolicy Bypass)


  
⚙️ How It Works

The .CMD script calls PowerShell to:
- Create a graphical window (System.Windows.Forms)
- Display buttons for theme selection
- Modify the registry key responsible for CMD AutoRun
- Apply the chosen color command automatically to new CMD sessions



⚠️ Disclaimer
This script modifies the Windows registry to configure CMD.
Be aware that:
- The theme applies to all new CMD windows.
- You can revert to default by selecting STANDARD.

  
👨‍💻 Author

Created by Diogo Santos Pombo


📜 License


Distributed under the MIT License.
Feel free to use, modify, and share.
