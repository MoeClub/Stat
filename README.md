# Stat
Stat Client & Stat Server for Linux.

# start
```
# ./StatServer -a=MoeClub -port=8123

# ./StatClient -a=MoeClub -r="http://ServerIP:8123"

```

# Adv for StatClient
```
# kill -s USR1 <PID>
Manual Refresh Shell File

# kill -s USR2 <PID>
Manual Refresh Config File, Index File, Server Data

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
