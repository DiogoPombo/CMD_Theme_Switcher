# 🎨 CMD Theme Switcher

A simple yet powerful utility to **switch Command Prompt (CMD) themes** on Windows, powered by PowerShell with a graphical interface.

---

## 🚀 Features

* Quickly switch between multiple CMD themes:

  * **STANDARD** → Restores the default CMD behavior (removes only color customization, preserves existing AutoRun).
  * **SYSTEM** → Matches the Windows theme:

    * Light Windows theme → LIGHT
    * Dark Windows theme → DARK
  * **AUTO** → Automatically selects theme based on time:

    * 07:00–17:00 → LIGHT
    * 17:01–06:59 → DARK
  * **DARK** → Black background with white text (`color 07`)
  * **LIGHT** → White background with black text (`color f0`)
  * **MATRIX** → Black background with green text (`color 0A`)
  * **COLD** → Black background with cyan text (`color 0B`)
  * **GOLD** → Black background with yellow text (`color 0E`)
  * **THREAT** → Black background with red text (`color 0C`)
  * **CANCEL** → Closes without making changes

---

## 🧠 Smart AutoRun Handling

* Preserves any existing `AutoRun` configuration
* Removes only previous `color XX` commands
* Prevents duplication or conflicts
* Fully reversible at any time

---

## 📦 Installation

1. Download or clone this repository:

   ```bash
   git clone https://github.com/DiogoPombo/CMD_Theme_Switcher
   ```

2. Place the `CMD Theme Switcher.CMD` file in a convenient folder

3. Run it by double-clicking

---

## 🖥️ Requirements

* Windows 10 or later
* PowerShell available in system PATH

> ⚠️ If PowerShell is not available, the application will display an error and exit.

---

## ⚙️ How It Works

The `.CMD` script launches PowerShell to:

* Create a graphical interface using `System.Windows.Forms`
* Display theme selection buttons
* Read and modify the Windows registry:

  * `HKCU:\Software\Microsoft\Command Processor`
* Update the `AutoRun` key to automatically apply the selected theme on new CMD sessions

---

## 💡 Use Cases

* Quickly switch themes depending on environment lighting
* Avoid repetitive manual configuration
* Automatically adapt CMD appearance:

  * Based on time of day (AUTO)
  * Based on Windows theme (SYSTEM)

---

## ❓ Frequently Asked Questions

### Why use this instead of changing CMD manually?

If you frequently open and close CMD, manually changing the theme becomes repetitive and inefficient. This tool automates that process.

---

### Does it overwrite my existing configuration?

No.

It preserves your existing `AutoRun` settings and only modifies color-related commands.

---

### Can I revert the changes?

Yes.

Just click **STANDARD** to remove color customization and restore default behavior.

---

## ⚠️ Disclaimer

This script modifies the Windows registry to configure CMD behavior.

* Changes apply to all new CMD sessions
* No system-wide or administrative changes are made
* All changes are reversible

---

## 👨‍💻 Author

Created by **Diogo Santos Pombo**

---

## 📜 License

Distributed under the MIT License.
Feel free to use, modify, and share.
