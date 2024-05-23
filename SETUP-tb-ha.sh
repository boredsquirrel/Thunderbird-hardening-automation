#!/bin/bash

# download the script
curl https://raw.githubusercontent.com/boredsquirrel/Thunderbird-hardening-automation/main/thunderbird-hardening-overwrite | tee > ~/.local/bin/thunderbird-hardening-overwrite
chmod +x ~/.local/bin/thunderbird-hardening-overwrite

mkdir ~/.thunderbird

# setup the automatic mechanism
# this user systemd service runs the script every 48h

cat > ~/.config/systemd/user/thunderbird-hardening-overwrite.service <<EOF
[Unit]
Description=update the arkenfox user.js and apply patches to make it user friendly
Wants=graphical.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=%h/.local/bin/thunderbird-hardening-overwrite

[Install]
Alias=thunderbird-hardening-overwrite.service
WantedBy=default.target
EOF

cat > ~/.config/systemd/user/thunderbird-hardening-overwrite.timer <<EOF
[Unit]
Description=run thunderbird-hardening-overwrite.service every 48 hours
RefuseManualStart=no  # Allow manual starts
#RefuseManualStop=no   # Allow manual stops

[Timer]
#Execute job if it missed a run due to machine being off
Persistent=true
#Run 120 seconds after boot for the first time
OnBootSec=120
#Run every 48 hours after it was last started
OnUnitActiveSec=172800
Unit=thunderbird-hardening-overwrite.service

[Install]
WantedBy=timers.target
EOF

# reload systemd daemon for this user
systemctl --user daemon-reload

notify-send -a "Thunderbird Hardening" "Setup completed" "Your Thunderbird configurations is set up\nand will be automatically updated every 48 hours."
