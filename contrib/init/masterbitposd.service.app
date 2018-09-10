[Unit]
Description=MasterBitPOS's distributed currency daemon
After=network.target

[Service]
User=masterbitpos
Group=masterbitpos

Type=forking
PIDFile=/var/lib/masterbitposd/masterbitposd.pid

ExecStart=/usr/bin/masterbitposd -daemon -pid=/var/lib/masterbitposd/masterbitposd.pid \
          -conf=/etc/masterbitpos/masterbitpos.conf -datadir=/var/lib/masterbitposd

ExecStop=-/usr/bin/masterbitpos-cli -conf=/etc/masterbitpos/masterbitpos.conf \
         -datadir=/var/lib/masterbitposd stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
