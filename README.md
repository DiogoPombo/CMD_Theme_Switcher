# 🎨 CMD Theme Switcher

A simple yet powerful utility to **switch Command Prompt (CMD) themes** on Windows, powered by a PowerShell-based Graphical User Interface (GUI) integrated directly into a `.cmd` script.

---

## 🚀 Features

The script is now organized into categorized rows for a better user experience:

### 🌑 Dark Themes (Row 1)
*   **DARK** → Standard black background with white text (`color 07`).
*   **UTOPIA** → Tech-focused cyan style (`color 0B`).
*   **MATRIX** → The classic green "hacker" look (`color 0A`).
*   **GOLD** → Amber/Yellow text for high visibility (`color 0E`).
*   **SENTINEL** → Visual alert style with light red text (`color 0C`).

### ☀️ Light Themes (Row 2)
*   **LIGHT** → White background with black text (`color f0`).
*   **SKY** → White background with navy blue text (`color f1`).
*   **BLEACH** → White background with lilac text (`color fD`).
*   **EXAMPLE** → White background with red text (`color fC`).
*   **GRAPHITE** → Grey background with black text (`color 70`).

### 🛠️ System & Control (Row 3)
*   **STANDARD** → Restores CMD to factory defaults (removes color customization but preserves other AutoRun commands).
*   **CANCEL** → Closes the application without making any changes.

---

## 🧠 Smart AutoRun Handling

Unlike basic scripts, this utility was built with preservation logic:
*   **Preserves History:** If you already have commands in your `AutoRun` (like aliases or initialization scripts), the theme is appended (`& color XX`) instead of overwriting your settings.
*   **Selective Cleanup:** The **STANDARD** button identifies and removes only the color instruction, keeping your other configurations intact.
*   **Isolation:** Changes only affect the current user (`HKCU`), ensuring security in multi-user environments.

---

## 📦 Installation & Usage

1.  Download the `CMD Theme Switcher.cmd` file.
2.  Place it in any folder of your choice.
3.  Run it by double-clicking (no Administrator privileges required).

---

## 🖥️ Requirements

*   Windows 10 or Windows 11.
*   PowerShell enabled (system default).

---

## ⚙️ How It Works

The `.cmd` script launches PowerShell in a single line to:
1.  Build a GUI using `System.Windows.Forms`.
2.  Organize buttons in a responsive and centered layout.
3.  Access the Windows Registry at:
    `HKCU:\Software\Microsoft\Command Processor`
4.  Update the `AutoRun` value to persistently inject the `color` command for all new sessions.

---

## ❓ Frequently Asked Questions

### Does this affect other users on the computer?
No. All changes are made within the `HKEY_CURRENT_USER` hive, so only your profile is affected.

### Can I use this on a corporate computer?
Yes. The script does not require UAC (Administrator) prompts and respects existing registry keys, making it safe for work environments.

### Why didn't the theme change in the current window?
The Windows `AutoRun` is processed the moment a CMD window is launched. Therefore, the new colors will appear in all **subsequent** windows you open.

---

## 👨‍💻 Author

Created by **Diogo Santos Pombo** — \Õ/ — @2026

---

## 📜 License

Distributed under the MIT License. Feel free to use, modify, and share.
