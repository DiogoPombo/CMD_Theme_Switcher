::----------------------------------------------------------::
:: CMD Theme Switcher - Batch Script to configure CMD theme ::
::        Author: Diogo Santos Pombo - \Õ/ - @2026          ::
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

powershell -NoProfile -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; $f = New-Object Windows.Forms.Form; $f.Text = 'CMD Configuration'; $f.Size = New-Object Drawing.Size(650,300); $f.StartPosition = 'CenterScreen'; $f.FormBorderStyle = 'FixedDialog'; $f.MaximizeBox = $false; $l = New-Object Windows.Forms.Label; $l.Text = 'Choose the CMD theme:'; $l.AutoSize = $true; $l.Location = New-Object Drawing.Point(245,20); $f.Controls.Add($l); $sT = { param($c); $p='HKCU:\Software\Microsoft\Command Processor'; if(!(Test-Path $p)){New-Item -Path $p -Force | Out-Null}; $cur = (Get-ItemProperty -Path $p -Name 'AutoRun' -ErrorAction SilentlyContinue).AutoRun; if($cur -and $cur -notmatch 'color '){ $nv = $cur + ' & color ' + $c } else { $nv = 'color ' + $c }; New-ItemProperty -Path $p -Name 'AutoRun' -Value $nv -PropertyType String -Force | Out-Null; [Windows.Forms.MessageBox]::Show('CMD configured to ' + $c + ' theme!','Success',0,64); $f.Close() }; $bD=New-Object Windows.Forms.Button; $bD.Text='DARK'; $bD.Location=New-Object Drawing.Point(40,70); $bD.Add_Click({&$sT '07'}); $f.Controls.Add($bD); $bU=New-Object Windows.Forms.Button; $bU.Text='UTOPIA'; $bU.Location=New-Object Drawing.Point(155,70); $bU.Add_Click({&$sT '0B'}); $f.Controls.Add($bU); $bM=New-Object Windows.Forms.Button; $bM.Text='MATRIX'; $bM.Location=New-Object Drawing.Point(270,70); $bM.Add_Click({&$sT '0A'}); $f.Controls.Add($bM); $bG=New-Object Windows.Forms.Button; $bG.Text='GOLD'; $bG.Location=New-Object Drawing.Point(385,70); $bG.Add_Click({&$sT '0E'}); $f.Controls.Add($bG); $bS=New-Object Windows.Forms.Button; $bS.Text='SENTINEL'; $bS.Location=New-Object Drawing.Point(500,70); $bS.Add_Click({&$sT '0C'}); $f.Controls.Add($bS); $bL=New-Object Windows.Forms.Button; $bL.Text='LIGHT'; $bL.Location=New-Object Drawing.Point(40,130); $bL.Add_Click({&$sT 'f0'}); $f.Controls.Add($bL); $bK=New-Object Windows.Forms.Button; $bK.Text='SKY'; $bK.Location=New-Object Drawing.Point(155,130); $bK.Add_Click({&$sT 'f1'}); $f.Controls.Add($bK); $bB=New-Object Windows.Forms.Button; $bB.Text='BLEACH'; $bB.Location=New-Object Drawing.Point(270,130); $bB.Add_Click({&$sT 'fD'}); $f.Controls.Add($bB); $bE=New-Object Windows.Forms.Button; $bE.Text='EXAMPLE'; $bE.Location=New-Object Drawing.Point(385,130); $bE.Add_Click({&$sT 'fC'}); $f.Controls.Add($bE); $bR=New-Object Windows.Forms.Button; $bR.Text='GRAPHITE'; $bR.Location=New-Object Drawing.Point(500,130); $bR.Add_Click({&$sT '70'}); $f.Controls.Add($bR); $bSt=New-Object Windows.Forms.Button; $bSt.Text='STANDARD'; $bSt.Location=New-Object Drawing.Point(210,200); $bSt.Add_Click({Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Command Processor' -Name 'AutoRun' -ErrorAction SilentlyContinue; [Windows.Forms.MessageBox]::Show('CMD restored to standard default theme!','Success',0,64); $f.Close()}); $f.Controls.Add($bSt); $bCn=New-Object Windows.Forms.Button; $bCn.Text='CANCEL'; $bCn.Location=New-Object Drawing.Point(325,200); $bCn.Add_Click({[Windows.Forms.MessageBox]::Show('No changes were made!','Cancelled',0,64); $f.Close()}); $f.Controls.Add($bCn); $f.ShowDialog() | Out-Null"

exit /b