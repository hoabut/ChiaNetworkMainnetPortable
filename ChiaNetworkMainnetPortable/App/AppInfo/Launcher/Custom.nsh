${SegmentFile}
!define message1 "WARNING! Be sure to write down, backup, and store the ordered 24 words mnemonic seed (the number beside each word is important).  Chia Network Mainnet (Chia Blockchain) works with key management in its own unique ways.  It is HIGHLY recommended or perhaps a requirement to delete all private keys using the Chia GUI via the keen red button under Keys (or under Sign In 'DELETE ALL KEYS') if you are no longer using the Chia Network Mainnet (Chia Blockchain) Portable app on the host machine.  The 24 words mnemonic seed is use to recover (import) all private and public keys of the portable app on any host machine you desire.  With portable app launched, you can also manage keys via command line:$\r$\n"
!define message2 "\App\ChiaNetworkMainnet\resources\app.asar.unpacked\daemon>.\chia keys --help; .\chia keys show --show-mnemonic-seed; .\chia keys delete_all; .\chia keys add <mnemonic>$\r$\n"

${SegmentPrePrimary}
	MessageBox MB_OK|MB_ICONEXCLAMATION "${message1}${message2}"
!macroend