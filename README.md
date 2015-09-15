# docker-owl-api

## Build

```$sudo docker build --force-rm=true -t owl-api .```

## Run

```$sudo docker run -d --name owl-api -v /path/to/cfg.json:/home/workspace/bin/cfg.json -p 80:80 owl-api```

## cfg.json
```
{
    "debug": false,
    "hostname": "",
    "ip": "",
    "database": {
        "addr": "mysql:3306",
        "account": "root",
        "password": ""
    }
}
```
