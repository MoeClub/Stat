# Stat
Stat Client & Stat Server for Linux.

# start
```
# ./StatServer -a=MoeClub -port=8123


# ./StatClient -a=MoeClub -r="http://ServerIP:8123"

# ./StatClient -a=MoeClub -r="http://ServerIP:8123" -ip="http://checkip.amazonaws.com" -n="MoeClub_Client"
# ./StatClient -a=MoeClub -r="http://ServerIP:8123" -ip="http://http://ServerIP:8123?foramt=ip" -n="MoeClub_Client"

```

# Adv for StatServer
```
# kill -s USR1 <PID>
Manual Refresh Shell File

# kill -s USR2 <PID>
Manual Refresh Config File, Index File, Server Data

```

# install
```
# client
bash <(wget --no-check-certificate -4 -qO- https://github.com/MoeClub/Stat/raw/main/install.sh) StatClient

# server
bash <(wget --no-check-certificate -4 -qO- https://github.com/MoeClub/Stat/raw/main/install.sh) StatServer

```

# config.json
```
{
"userAgent": "",
"addrServer": "http://checkip.amazonaws.com",
"pingHost": "www.baidu.com",
"refreshInterval": 300,
"offlineTimeout": 259200,
"cmd": "",
"shell": "/tmp/test.sh"
}
```

# CPU Vendor
```
0x41: "ARM"
0x42: "Broadcom"
0x43: "Cavium"
0x44: "DEC"
0x46: "Fujitsu"
0x48: "HiSilicon"
0x49: "Infineon"
0x4d: "Motorola/Freescale"
0x4e: "NVIDIA"
0x50: "APM"
0x51: "Qualcomm"
0x56: "Marvell"
0x61: "Apple"
0x69: "Intel"
0xc0: "Ampere"
```

# CPU Part
```
0x810: "ARM810"
0x920: "ARM920"
0x922: "ARM922"
0x926: "ARM926"
0x940: "ARM940"
0x946: "ARM946"
0x966: "ARM966"
0xa20: "ARM1020"
0xa22: "ARM1022"
0xa26: "ARM1026"
0xb02: "ARM11 MPCore"
0xb36: "ARM1136"
0xb56: "ARM1156"
0xb76: "ARM1176"
0xc05: "Cortex-A5"
0xc07: "Cortex-A7"
0xc08: "Cortex-A8"
0xc09: "Cortex-A9"
0xc0d: "Cortex-A17"
0xc0f: "Cortex-A15"
0xc0e: "Cortex-A17"
0xc14: "Cortex-R4"
0xc15: "Cortex-R5"
0xc17: "Cortex-R7"
0xc18: "Cortex-R8"
0xc20: "Cortex-M0"
0xc21: "Cortex-M1"
0xc23: "Cortex-M3"
0xc24: "Cortex-M4"
0xc27: "Cortex-M7"
0xc60: "Cortex-M0+"
0xd01: "Cortex-A32"
0xd02: "Cortex-A34"
0xd03: "Cortex-A53"
0xd04: "Cortex-A35"
0xd05: "Cortex-A55"
0xd06: "Cortex-A65"
0xd07: "Cortex-A57"
0xd08: "Cortex-A72"
0xd09: "Cortex-A73"
0xd0a: "Cortex-A75"
0xd0b: "Cortex-A76"
0xd0c: "Neoverse-N1"
0xd0d: "Cortex-A77"
0xd0e: "Cortex-A76AE"
0xd13: "Cortex-R52"
0xd20: "Cortex-M23"
0xd21: "Cortex-M33"
0xd40: "Neoverse-V1"
0xd41: "Cortex-A78"
0xd42: "Cortex-A78AE"
0xd43: "Cortex-A65AE"
0xd44: "Cortex-X1"
0xd46: "Cortex-A510"
0xd47: "Cortex-A710"
0xd48: "Cortex-X2"
0xd49: "Neoverse-N2"
0xd4a: "Neoverse-E1"
0xd4b: "Cortex-A78C"
0xd4c: "Cortex-X1C"
0xd4d: "Cortex-A715"
0xd4e: "Cortex-X3"
```



