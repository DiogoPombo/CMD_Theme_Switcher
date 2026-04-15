::----------------------------------------------------------::
:: CMD Theme Switcher - Batch Script to configure CMD theme ::
::         Author: Diogo Santos Pombo - \Õ/ - @2026         ::
::----------------------------------------------------------::


@echo off
@title CMD Theme Switcher


where powershell >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Windows PowerShell is required to run this application!
    echo.
    echo Please install or enable Windows PowerShell and try again!
    echo.
    pause
    exit /b
)


powershell -NoProfile -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; function Set-Color($col){$key='HKCU:\Software\Microsoft\Command Processor'; New-Item -Path $key -Force|Out-Null; $current=(Get-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue).AutoRun; if($current){$clean=$current -replace 'color [0-9A-Fa-f]{2}',''; $new=($clean.Trim()+' color '+$col).Trim()}else{$new='color '+$col}; Set-ItemProperty -Path $key -Name AutoRun -Value $new}; function Set-Auto(){ $h=(Get-Date).Hour; if($h -ge 7 -and $h -le 17){Set-Color 'f0'}else{Set-Color '07'}}; $form=New-Object Windows.Forms.Form; $form.Text='CMD Configuration'; $form.Size=New-Object Drawing.Size(800,260); $form.StartPosition='CenterScreen'; $label=New-Object Windows.Forms.Label; $label.Text='Choose the CMD theme:'; $label.AutoSize=$true; $label.Location=New-Object Drawing.Point(330,30); $form.Controls.Add($label); $btnStandard=New-Object Windows.Forms.Button; $btnStandard.Text='STANDARD'; $btnStandard.Location=New-Object Drawing.Point(30,150); $btnStandard.Add_Click({$key='HKCU:\Software\Microsoft\Command Processor'; $current=(Get-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue).AutoRun; if($current){$clean=$current -replace 'color [0-9A-Fa-f]{2}',''; if($clean.Trim()){Set-ItemProperty -Path $key -Name AutoRun -Value $clean.Trim()}else{Remove-ItemProperty -Path $key -Name AutoRun -ErrorAction SilentlyContinue}}; [System.Windows.Forms.MessageBox]::Show('CMD restored to standard default theme!','Success'); $form.Close()}); $form.Controls.Add($btnStandard); $btnDark=New-Object Windows.Forms.Button; $btnDark.Text='DARK'; $btnDark.Location=New-Object Drawing.Point(120,150); $btnDark.Add_Click({Set-Color '07'; [System.Windows.Forms.MessageBox]::Show('Dark theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnDark); $btnLight=New-Object Windows.Forms.Button; $btnLight.Text='LIGHT'; $btnLight.Location=New-Object Drawing.Point(210,150); $btnLight.Add_Click({Set-Color 'f0'; [System.Windows.Forms.MessageBox]::Show('Light theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnLight); $btnMatrix=New-Object Windows.Forms.Button; $btnMatrix.Text='MATRIX'; $btnMatrix.Location=New-Object Drawing.Point(300,150); $btnMatrix.Add_Click({Set-Color '0A'; [System.Windows.Forms.MessageBox]::Show('Matrix theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnMatrix); $btnCold=New-Object Windows.Forms.Button; $btnCold.Text='COLD'; $btnCold.Location=New-Object Drawing.Point(390,150); $btnCold.Add_Click({Set-Color '0B'; [System.Windows.Forms.MessageBox]::Show('Cold theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnCold); $btnThreat=New-Object Windows.Forms.Button; $btnThreat.Text='THREAT'; $btnThreat.Location=New-Object Drawing.Point(480,150); $btnThreat.Add_Click({Set-Color '0C'; [System.Windows.Forms.MessageBox]::Show('Threat theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnThreat); $btnGold=New-Object Windows.Forms.Button; $btnGold.Text='GOLD'; $btnGold.Location=New-Object Drawing.Point(570,150); $btnGold.Add_Click({Set-Color '0E'; [System.Windows.Forms.MessageBox]::Show('Gold theme applied!','Success'); $form.Close()}); $form.Controls.Add($btnGold); $btnAuto=New-Object Windows.Forms.Button; $btnAuto.Text='AUTO'; $btnAuto.Location=New-Object Drawing.Point(660,150); $btnAuto.Add_Click({Set-Auto; [System.Windows.Forms.MessageBox]::Show('Auto theme applied based on time!','Success'); $form.Close()}); $form.Controls.Add($btnAuto); $btnCancel=New-Object Windows.Forms.Button; $btnCancel.Text='CANCEL'; $btnCancel.Location=New-Object Drawing.Point(350,190); $btnCancel.Add_Click({[System.Windows.Forms.MessageBox]::Show('No changes were made!','Cancelled'); $form.Close()}); $form.Controls.Add($btnCancel); $form.ShowDialog()"


exit /b