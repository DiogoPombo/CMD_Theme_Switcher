# 🎨 CMD Theme Switcher


A simple yet stylish utility to **switch Command Prompt (CMD) themes** on Windows, powered by PowerShell with a graphical interface.


---


## 🚀 Features


- Quickly toggle between CMD themes:
  - **STANDARD** → Restores the default CMD theme.
  - **DARK** → Black background with white text (`color 07`).
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


❓Frequently Asked Questions

Why was it created? Why would I want to change my CMD theme? Why would I use this instead of changing the color manually?
- I work in a well-lit and bright environment, and among my tasks I need to use the CMD. The default dark theme in CMD strains my eyes in bright environments, so I choose to use CMD with a light theme but since I constantly need to open and close the CMD, it's impractical for me to change the console color every time I open it. Therefore, I thought of an automatic solution.

- If in the future CMD adapts to the Windows theme, switching between light and dark depending on the OS theme, you might not want to use the auto theme; in this case, this theme switcher would be useful.

- You can change your CMD color manually instead of using this, yes, but if you work with CMD by constantly opening and closing it, this creates a registry key that automatically selects the theme, avoiding unnecessary repetitive action, and you can undo the changes at any time.


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
