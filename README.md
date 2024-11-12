# dns-manager 

Manage DNS Records in Cloudflare Zone or Bind DNS Server Zone

## Install

    brew tap ruedigerp/dns-manager
    brew install dns-manager

## Config

Die default config Datei ist config.yaml im aktuellen Verzeichnis. 
Es ist möglich für verschiedene Zonen unterschiedliche Konfigurations Dateien zu benutzen. 

config-example.com.yaml:

    cloudflare:
    zoneid: "XXXXXYourCloudZoneIDXXXXX"
    token: "XXXXXYourCloudflareAPIToken"

    bind:
    server: "ns01.example.com:53"
    keyname: "update-key-zone1."
    hmackey: "D/bOz+8YKMZEKyrtBcWythudSrSW76IPH8SnXfvqgL147IcLqPi1wUaktQZIa9AHVsMDQy49h4fublwwoT5Ruu=="


config-example.com.yaml:

    cloudflare:
    zoneid: "XXXXXYourCloudZoneIDXXXXX"
    token: "XXXXXYourCloudflareAPIToken"

    bind:
    server: "ns01.example.com:53"
    keyname: "update-key-zone2."
    hmackey: "D/bOz+8YKMZEKyrtBcWythudSrSW76IPH8SnXfvqgL147IcLqPi1wUaktQZIa9AHVsMDQy49h4fublwwoT5Ruu=="
    

## Manage DNS Record in Cloudflare DNS Zone

Create a new DNS Record: 

    #> dns-manager add -d test1.example.com -s cloudflare -c config-example.com.yaml -r A -i 123.123.123.123 -p false
    RecordID: 6728448f8340dfd2da753557a70d3670

Fetch a DNS Record: 

    #> dns-manager get -d test1.example.com -s cloudflare -c config-example.com.yaml
    RecordID: 6728448f8340dfd2da753557a70d3670
    test1.example.com A 123.123.123.123

Update a DNS Record:

    ❯ dns-manager update -d test1.example.com -s cloudflare -c config-example.com.yaml -r A -i 111.111.111.111 -p false
    RecordID: 258cd278b17f9a3d35f52a9eb9e58ab6
    ❯ dns-manager get -d test1.example.com -s cloudflare -c config-example.com.yaml
    RecordID: 258cd278b17f9a3d35f52a9eb9e58ab6
    test1.example.com A 111.111.111.111

Delete a DNS Record: 

    #> dns-manager delete -d test1.example.com -s cloudflare -c config-example.com.yaml
    RecordID: 6728448f8340dfd2da753557a70d3670
    DNS-Record deleted.

## Manage DNS Record in Bind DNS Zone

Add DNS Record:

    ❯ dns-manager add -d test1.zone-in-bind.net -s bind -c config-example.com.yaml -r A -i 123.123.123.123 -z zone-in-bind.net
    DNS-Update ok!
    ❯ dig +short test1.zone-in-bind.net
    123.123.123.123

Update DNS Record: 

    ❯ dns-manager update -d test1.zone-in-bind.net -s bind -c config-example.com.yaml -r A -o 123.123.123.123 -i 111.111.111.111 -z zone-in-bind.net
    DNS-Update ok!
    ❯ dig +short test1.zone-in-bind.net 
    111.111.111.111

Delete DNS Record:

    ❯ dns-manager delete -d test1.zone-in-bind.net -s bind -c config-example.com.yaml -r A -i 111.111.111.111 -z zone-in-bind.net
    DNS-Eintrag deleted!
    ❯ dig +short test1.zone-in-bind.net 

## Batch Mode (current only Cloudflare)

You can also create, modify, or delete all entries at once in batch mode.

To do this, add the following lines to the appropriate config.yaml:

    batch:
    command: add
    provider: cloudflare
    zone: example.com
    ip: 123.123.123.123
    proxied: true
    domains: 
        - api.example.com
        - user.example.com
        - ws.example.com
        - app.example.com

### command

    * add
    * update
    * delete

### zone

    only use for Bind

### proxied

    only use für Cloudflare

