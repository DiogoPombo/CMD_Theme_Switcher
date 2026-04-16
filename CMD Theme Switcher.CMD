::----------------------------------------------------------::
:: CMD Theme Switcher - Batch Script to configure CMD theme ::
::         Author: Diogo Santos Pombo - \Õ/ - @2026         ::
::----------------------------------------------------------::

@echo off
@title CMD Theme Switcher

where powershell >nul 2>&1
if %errorlevel% neq 0 (
    color 0c
    echo.
    echo ERROR: Windows PowerShell is required to run this application!
    echo Please install or enable Windows PowerShell and try again!
    pause
    exit /b
)

powershell -NoProfile -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; function Clean-AutoRun($v){if(!$v){return $null};$v=$v -replace 'color [0-9A-Fa-f]{2}','';return $v.Trim()}; function Set-Color($col){$key='HKCU:\Software\Microsoft\Command Processor';New-Item -Path $key -Force|Out-Null;$current=(Get-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue).AutoRun;$clean=Clean-AutoRun $current;if($clean){$new=($clean+' color '+$col).Trim()}else{$new='color '+$col};Set-ItemProperty -Path $key -Name AutoRun -Value $new}; function Show-Message($msg){[System.Media.SystemSounds]::Asterisk.Play();[System.Windows.Forms.MessageBox]::Show($msg,'CMD Theme Switcher',[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)|Out-Null}; function Show-Warning($msg){[System.Media.SystemSounds]::Exclamation.Play();[System.Windows.Forms.MessageBox]::Show($msg,'CMD Theme Switcher',[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)|Out-Null}; $form=New-Object Windows.Forms.Form; $form.Text='CMD Configuration'; $form.Size=New-Object Drawing.Size(600,400); $form.StartPosition='CenterScreen'; $label=New-Object Windows.Forms.Label; $label.Text='Choose the CMD theme:'; $label.AutoSize=$true; $label.Location=New-Object Drawing.Point(230,30); $form.Controls.Add($label); $btnStandard=New-Object Windows.Forms.Button; $btnStandard.Text='STANDARD'; $btnStandard.Location=New-Object Drawing.Point(60,170); $btnStandard.Add_Click({$key='HKCU:\Software\Microsoft\Command Processor';$current=(Get-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue).AutoRun;$clean=Clean-AutoRun $current;if($clean){Set-ItemProperty -Path $key -Name AutoRun -Value $clean}else{Remove-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue};Show-Message 'CMD restored to default theme!';$form.Close()}); $form.Controls.Add($btnStandard); $btnDark=New-Object Windows.Forms.Button; $btnDark.Text='DARK'; $btnDark.Location=New-Object Drawing.Point(180,170); $btnDark.Add_Click({Set-Color '07';Show-Message 'Dark theme applied!';$form.Close()}); $form.Controls.Add($btnDark); $btnLight=New-Object Windows.Forms.Button; $btnLight.Text='LIGHT'; $btnLight.Location=New-Object Drawing.Point(300,170); $btnLight.Add_Click({Set-Color 'f0';Show-Message 'Light theme applied!';$form.Close()}); $form.Controls.Add($btnLight); $btnMatrix=New-Object Windows.Forms.Button; $btnMatrix.Text='MATRIX'; $btnMatrix.Location=New-Object Drawing.Point(420,170); $btnMatrix.Add_Click({Set-Color '0A';Show-Message 'Matrix theme applied!';$form.Close()}); $form.Controls.Add($btnMatrix); $btnCancel=New-Object Windows.Forms.Button; $btnCancel.Text='CANCEL'; $btnCancel.Location=New-Object Drawing.Point(260,260); $btnCancel.Add_Click({Show-Warning 'No changes were made!';$form.Close()}); $form.Controls.Add($btnCancel); $form.ShowDialog()"

exit /b