# CRLFMap

CRLFMap is a tool to find HTTP Splitting vulnerabilities

## Why?
- I wanted to write a tool in Golang for concurrency
- I wanted to be able to fuzz _both_ parameters and paths

## Installation

```bash
go get github.com/ryandamour/crlfmap
```

## Help
```bash
Available Commands:
  help        Help about any command
  scan        A scanner for all your CRLF needs

Flags:
  -h, --help   help for crlfmap
```

## `scan` usage

```bash
crlfmap scan --domains domains.txt --output results.txt --slack-webhook "https://hooks.slack.com/services/XXX/YYYZZZ"

===============================================================
CRLFMap v0.0.1
by Ryan D'Amour @ryandamour 
===============================================================
           _  __                       
          | |/ _|                      
  ___ _ __| | |_ _ __ ___   __ _ _ __  
 / __| '__| |  _| '_ ' _  \/ _' | '_ \ 
| (__| |  | | | | | | | | | (_| | |_) |
 \___|_|  |_|_| |_| |_| |_|\__,_| .__/ 
                                | |    
                                |_|    

    v0.0.1                                
-----------------------
:: Domains    : domains.txt
:: Payloads   : payloads.txt
:: Threads    : 1
:: Output     : results.txt
:: User Agent : Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36
:: Timeout    : 10
:: Delay      : 0
-----------------------
[+]http://localhost:3000/v1/%0AInjected-Header:CRLFInjecttest.json: is Vulnerable
[+]http://localhost:3000/v1/%20%0AInjected-Header:CRLFInjecttest.json: is Vulnerable
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Sponsored By
![alt text](https://miro.medium.com/max/168/1*Pzr_iwx12ycGpGg0K0Yauw.png)
