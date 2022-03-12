![image info](./chianetworkmainnetportable_readme_version_1.2.11_Dev_Test_2_gh_files/media/image1.png)

Sidenotes, highlights, and more:

.gitignore (instead get full templates and sources structure via
releases):

\# ignore files that exceeds GitHub\'s file size limit of 100.00 MB

ChiaNetworkMainnetPortable/App/ChiaNetworkMainnet/Chia.exe

ChiaNetworkMainnetPortable/App/ChiaNetworkMainnet/resources/app.asar

\# ignore files that exceeds GitHub\'s file size limit of 50.00 MB

paf_templates_sources/ChiaNetworkMainnetPortable_template_source_1.2.11_Dev_Test_2.7z

paf_binaries/ChiaNetworkMainnetPortable_1.2.11_Dev_Test_2.paf.exe

paf_binaries folder: contains all .paf.exe releases (i.e. releases)

paf_templates_sources folder: contains all PortableApps.com Format
templates and sources

(or call them together as sources)

chianetworkmainnetportable_readme_version_1.2.11_Dev_Test_2\_gh.docx
file: this file in .docx

README.md file: this file in .md

System requirements:

Microsoft Windows 7 64-bit or later

At least version 4.5 of .NET Framework

Windows Installer use by Chia setup does not support Windows 7 64-bit so
since this is portable, then download .NET Framework 4.5 for Windows 7
64-bit and install on it and then you can run the portable app on
Windows 7 64-bit.

Microsoft .NET Framework 4.5:
<https://www.microsoft.com/en-us/download/details.aspx?id=30653>

[Download latest
release](https://github.com/hoabut/ChiaNetworkMainnetPortable/releases/tag/1.2.10.991)

[Go to the Chia Network Mainnet (Chia Blockchain) Portable
Homepage](https://portableapps.com/node/64425)

**Chia Network Mainnet (Chia Blockchain): Known Issues?, Notable
Additions, Et Cetera**

Through additional testings, some known issues came up even though it
did not appear on the Chia Network Mainnet (Chia Blockchain) release
notes.

*Issue one*: If you already created the Chia keys, it is probably a
requirement not to change you network settings (i.e. disabling network
interfaces). Otherwise, when Chia Blockchain comes up it will hang on
\"Connecting to wallet\" and will continue forever until shutdown or
force shutdown of the app. It seems if the network settings were
restored back to its original state, the Chia keys were no longer
available. If that is the case, then import the backup of your Chia
keys.

*Issue two*: It seems the loopback interface will not work as
\"Connecting to wallet\" never succeeds.

Notable additions in version 1.2.11 Dev Test 2: "Performance
improvements for nodes to support higher transaction volumes, especially
for low powered devices like RaspBerry Pi."

**Chia Network Mainnet (Chia Blockchain): PortableAppsFormat Portability
Notes**

Chia Network Mainnet (Chia Blockchain) Portable is an open source
digital currency based on Proofs of Space and Time and with the benefits
of Chialisp on chain programming language. It\'s packaged with a
PortableApps.com launcher so you can use it from a cloud folder,
portable drive, or local folder without needing to install it on each
PC. Learn more about [Chia Network Mainnet (Chia
Blockchain)](https://www.chia.net/) ...

Chia Network Mainnet (Chia Blockchain) uses %USERPROFILE% and %APPDATA%
to store its settings and data. Specifically,

\\Users\\\<username>\\.chia

\\Users\\\<username>\\.chia_keys

and

\\Users\\\<username>\\AppData\\Roaming\\Chia Blockchain

are use.

To make the app portable, the PortableApps.com launcher
\\App\\AppInfo\\Launcher\\ChiaNetworkMainnetPortable.ini has the

\[DirectoriesMove\]

.chia=%USERPROFILE%\\.chia

.chia_keys=%USERPROFILE%\\.chia_keys

Chia Blockchain=%APPDATA%\\Chia Blockchain

which puts the settings, keys, and data in the \\Data\\.chia,
\\Data\\.chia_keys, and \\Data\\Chia Blockchain inside the portable app
directory.

Chia Network Mainnet (Chia Blockchain) also uses Python keyring to
generate and store all private and public keys with countermeasures.
With that, a warning is display on every run of the portable app,
\"WARNING! Be sure to write down, backup, and store the ordered 24 words
mnemonic seed (the number beside each word is important). Chia Network
Mainnet (Chia Blockchain) works with key management in its own unique
ways. It is HIGHLY recommended or perhaps a requirement to delete all
private keys using the Chia GUI via the keen red button under Keys (or
under Sign In \'DELETE ALL KEYS\') if you are no longer using the Chia
Network Mainnet (Chia Blockchain) Portable app on the host machine. The
24 words mnemonic seed is use to recover (import) all private and public
keys of the portable app on any host machine you desire. With portable
app launched, you can also manage keys via command line:
\\App\\ChiaNetworkMainnet\\resources\\app.asar.unpacked\\daemon>.\\chia
keys \--help; .\\chia keys show \--show-mnemonic-seed; .\\chia keys
delete_all; .\\chia keys add \<mnemonic>\"

This warning is in \\App\\AppInfo\\Launcher\\Custom.nsh

On first run (or even subsequent runs if not added on the first run) the
app pops up a dialog box giving the user a chance to add firewall rules
pertaining to 8444/TCP (and perhaps 8444/UDP) for peer access. It will
require an elevated privilege in order to add the app or the ports
required in the firewall. However, UPnP is enabled by default so this
should be taken care of right from the start as long as UPnP on routers
are enabled as well. Otherwise, configure port forwarding for 8444/TCP
and 8444/UDP.

This can also be accomplish by elevated command line,

netsh advfirewall firewall add rule name="start_full_node" dir=in
action=allow
program="\\app\\chianetworkmainnet\\resources\\app.asar.unpacked\\daemon\\start_full_node.exe"
enable=yes

netsh advfirewall firewall add rule name="start_full_node" dir=out
action=allow
program="\\app\\chianetworkmainnet\\resources\\app.asar.unpacked\\daemon\\start_full_node.exe"
enable=yes

netsh advfirewall firewall add rule name="start_farmer" dir=in
action=allow
program="\\app\\chianetworkmainnet\\resources\\app.asar.unpacked\\daemon\\start_farmer.exe"
enable=yes

netsh advfirewall firewall add rule name="start_farmer" dir=out
action=allow
program="\\app\\chianetworkmainnet\\resources\\app.asar.unpacked\\daemon\\start_farmer.exe"
enable=yes

or by ports,

netsh advfirewall firewall add rule name="Open TCP Port 8444" dir=in
action=allow protocol=TCP localport=8444

netsh advfirewall firewall add rule name="Open UDP Port 8444" dir=in
action=allow protocol=UDP localport=8444

Besides meeting the portable app definition at
https://portableapps.com/about/what_is_a\_portable_app, it is very
workable in other OS/platform such as Linux, UNIX, BSD, etc. via Wine
(winehq.org) & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac.

Finally, "Why PortableApps.com Format and a PortableApps.com Installer?"
Perhaps, a read at
[[https://portableapps.com/about/what_is_a\_portable_app#whypaf]{.underline}](https://portableapps.com/about/what_is_a_portable_app#whypaf)
would suffice.
