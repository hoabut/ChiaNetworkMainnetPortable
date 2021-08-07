<img src="ChiaNetworkMainnetPortable\App\AppInfo\appicon_128.png" width="128" height="128" style="float:right;">
<!-- ChiaNetworkMainnetPortable -->
<p><strong>Chia Network Mainnet (Chia Blockchain) Portable</strong></p>

Sidenotes, highlights, and more:

<p>.gitignore (instead get full templates and sources structure via releases):<br>
# ignore files that exceeds GitHub's file size limit of 100.00 MB<br>
ChiaNetworkMainnetPortable/App/ChiaNetworkMainnet/Chia.exe
ChiaNetworkMainnetPortable/App/ChiaNetworkMainnet/resources/app.asar</p>
<p># ignore files that exceeds GitHub's file size limit of 50.00 MB<br>
paf_templates_sources/ChiaNetworkMainnetPortable_template_source_1.2.2_Dev_Test_1.7z
paf_binaries/ChiaNetworkMainnetPortable_1.2.2_Dev_Test_1.paf.exe</p>

<p>paf_binaries folder: contains all .paf.exe releases (i.e. releases)</p>
<p>paf_templates_sources folder: contains all PortableApps.com Format templates and sources
(or call them together as sources)</p>
<p>chianetworkmainnetportable_readme.txt file: this file in .txt</p>
<p>README.md file: this file in .md</p>

<p>System requirements:<br>
Microsoft Windows 7 64-bit or later<br>
At least version 4.5 of .NET Framework</p>

<p>For every run a warning will be display,<br>
"WARNING! Be sure to write down, backup, and store the ordered 24 words mnemonic seed (the number beside each word is important).  Chia Network Mainnet (Chia Blockchain) works with key management in its own unique ways.  It is HIGHLY recommended or perhaps a requirement to delete all private keys using the Chia GUI via the keen red button under Keys if you are no longer using the Chia Network Mainnet (Chia Blockchain) Portable app on the host machine.  The 24 words mnemonic seed is use to recover (import) all private and public keys of the portable app on any host machine you desire.  With portable app launched, you can also manage keys via command line: \App\ChiaNetworkMainnet\resources\app.asar.unpacked\daemon>.\chia keys --help; .\chia keys show --show-mnemonic-seed; .\chia keys delete_all; .\chia keys add (mnemonic)"</p>

<p>Windows Installer use by Chia setup does not support Windows 7 64-bit so since this is portable, then download .NET Framework 4.5 for Windows 7 64-bit and install on it and then you can run the portable app on Windows 7 64-bit.<br>
Microsoft .NET Framework 4.5: https://www.microsoft.com/en-us/download/details.aspx?id=30653</p>

<p><a href="https://github.com/hoabut/ChiaNetworkMainnetPortable/releases/tag/1.2.1.991">Download latest release &gt;&gt;</a></p>

<p><a href="https://portableapps.com/node/64425">Go to the Chia Network Mainnet (Chia Blockchain) Portable Homepage &gt;&gt;</a></p>
.<br>
.<br>
.<br>
<br>
<p>Chia Network Mainnet (Chia Blockchain) Portable is an open source digital currency based on Proofs of Space and Time and with the benefits of Chialisp on chain programming language.  It's packaged with a PortableApps.com launcher so you can use it from a cloud folder, portable drive, or local folder without needing to install it on each PC.  Learn more about Chia Network Mainnet (Chia Blockchain) at https://www.chia.net/ …<br>

Chia Network Mainnet (Chia Blockchain) uses %USERPROFILE% and %APPDATA% to store its settings and data.  Specifically,

\\Users\\\<username\>\\\.chia</pre>

and

\\Users\\\<username\>\\AppData\\Roaming\\Chia Blockchain

are use.<br>
To make the app portable, the PortableApps.com launcher \App\AppInfo\Launcher\ChiaNetworkMainnetPortable.ini has the<br>

[DirectoriesMove]<br>
.chia=%USERPROFILE%\\.chia<br>
Chia Blockchain=%APPDATA%\\Chia Blockchain<br>

which puts the settings and data in the \Data\\.chia  and \Data\Chia Blockchain inside the portable app directory.

Chia Network Mainnet (Chia Blockchain) also uses Python keyring to generate and store all private and public keys with countermeasures.  With that, a warning is display on every run of the portable app, "WARNING! Be sure to write down, backup, and store the ordered 24 words mnemonic seed (the number beside each word is important).  Chia Network Mainnet (Chia Blockchain) works with key management in its own unique ways.  It is HIGHLY recommended or perhaps a requirement to delete all private keys using the Chia GUI via the keen red button under Keys if you are no longer using the Chia Network Mainnet (Chia Blockchain) Portable app on the host machine.  The 24 words mnemonic seed is use to recover (import) all private and public keys of the portable app on any host machine you desire.  With portable app launched, you can also manage keys via command line: \App\ChiaNetworkMainnet\resources\app.asar.unpacked\daemon>.\chia keys --help; .\chia keys show --show-mnemonic-seed; .\chia keys delete_all; .\chia keys add (mnemonic)"<br>
This warning is in \App\AppInfo\Launcher\Custom.nsh

On first run (or even subsequent runs if not added on the first run) the app pops up a dialog box giving the user a chance to add firewall rules pertaining to 8444/TCP (and perhaps 8444/UDP) for peer access.  It will require an elevated privilege in order to add the app or the ports required in the firewall.  However, UPnP is enabled by default so this should be taken care of right from the start as long as UPnP on routers are enabled as well.  Otherwise, configure port forwarding for 8444/TCP and 8444/UDP.<br>

This can also be accomplish by elevated command line,<br>
netsh advfirewall firewall add rule name=”start_full_node” dir=in action=allow program=”\app\chianetworkmainnet\resources\app.asar.unpacked\daemon\start_full_node.exe” enable=yes<br>
netsh advfirewall firewall add rule name=”start_full_node” dir=out action=allow program=”\app\chianetworkmainnet\resources\app.asar.unpacked\daemon\start_full_node.exe”  enable=yes<br>
netsh advfirewall firewall add rule name=”start_farmer” dir=in action=allow program=”\app\chianetworkmainnet\resources\app.asar.unpacked\daemon\start_farmer.exe” enable=yes<br>
netsh advfirewall firewall add rule name=”start_farmer” dir=out action=allow program=”\app\chianetworkmainnet\resources\app.asar.unpacked\daemon\start_farmer.exe”  enable=yes<br>
or by ports,
netsh advfirewall firewall add rule name=”Open TCP Port 8444” dir=in action=allow protocol=TCP localport=8444<br>
netsh advfirewall firewall add rule name=”Open UDP Port 8444” dir=in action=allow protocol=UDP localport=8444<br>

Besides meeting the portable app definition at https://portableapps.com/about/what_is_a_portable_app, it is very workable in other OS/platform such as Linux, UNIX, BSD, etc. via Wine (winehq.org) & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac.</p>
