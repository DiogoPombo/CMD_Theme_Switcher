@echo off
::----------------------------------------------------------::
:: CMD Theme Switcher - Batch Script to configure CMD theme ::
::         Author: Diogo Santos Pombo - \Õ/ - @2025         ::
::----------------------------------------------------------::
@title CMD Theme Switcher


powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Add-Type -AssemblyName System.Windows.Forms; ^
   $form = New-Object Windows.Forms.Form; ^
   $form.Text = 'CMD Configuration'; ^
   $form.Size = New-Object Drawing.Size(350,150); ^
   $form.StartPosition = 'CenterScreen'; ^
   
   $label = New-Object Windows.Forms.Label; ^
   $label.Text = 'Choose the CMD theme:'; ^
   $label.AutoSize = $true; ^
   $label.Location = New-Object Drawing.Point(100,20); ^
   $form.Controls.Add($label); ^
   
   $btnStandard = New-Object Windows.Forms.Button; ^
   $btnStandard.Text = 'STANDARD'; ^
   $btnStandard.Location = New-Object Drawing.Point(20,60); ^
   $btnStandard.Add_Click({ ^
       Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Command Processor' -Name 'AutoRun' -ErrorAction SilentlyContinue; ^
       [System.Windows.Forms.MessageBox]::Show('CMD restored to standard default theme.','Success'); ^
       $form.Close() }); ^
   $form.Controls.Add($btnStandard); ^
   
   $btnBlack = New-Object Windows.Forms.Button; ^
   $btnBlack.Text = 'BLACK'; ^
   $btnBlack.Location = New-Object Drawing.Point(110,60); ^
   $btnBlack.Add_Click({ ^
       New-ItemProperty -Path 'HKCU:\Software\Microsoft\Command Processor' -Name 'AutoRun' -Value 'color 07' -PropertyType String -Force; ^
       [System.Windows.Forms.MessageBox]::Show('CMD configured to black theme (COLOR 07).','Success'); ^
       $form.Close() }); ^
   $form.Controls.Add($btnBlack); ^
   
   $btnLight = New-Object Windows.Forms.Button; ^
   $btnLight.Text = 'LIGHT'; ^
   $btnLight.Location = New-Object Drawing.Point(200,60); ^
   $btnLight.Add_Click({ ^
       New-ItemProperty -Path 'HKCU:\Software\Microsoft\Command Processor' -Name 'AutoRun' -Value 'color f0' -PropertyType String -Force; ^
       [System.Windows.Forms.MessageBox]::Show('CMD configured to light theme (COLOR F0).','Success'); ^
       $form.Close() }); ^
   $form.Controls.Add($btnLight); ^
   
   $btnCancel = New-Object Windows.Forms.Button; ^
   $btnCancel.Text = 'CANCEL'; ^
   $btnCancel.Location = New-Object Drawing.Point(290,60); ^
   $btnCancel.Add_Click({ ^
       [System.Windows.Forms.MessageBox]::Show('No changes were made.','Cancelled'); ^
       $form.Close() }); ^
   $form.Controls.Add($btnCancel); ^
   
   $form.ShowDialog()"
