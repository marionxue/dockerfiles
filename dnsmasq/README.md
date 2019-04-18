# dnsmasq
dnsmasq可以作为本地dns服务器的代理服务, 可以方便的在docker hosts中配置本地的dns代理服务完成本地自定义域名的解析工作,在配置dnsmasq的时候需要注意以下几个文件的使用：
- resolv.dnsmasq: dns本地服务虽然能解析自定义的域名,但是对于一些域名的正常解析还是依靠此文件指定的dns server
- dnsmasqhosts: 该文件就是配置自己自定义解析的域名地址,就是将自己随机配置的域名以及要想解析到ip写进此文件
> 注意一定要将这两个配置文件写进dnsmasq的配置文件中;

## dnsmasq配置文件的配置
```bash
resolv-file=/etc/resolv.dnsmasq
addn-hosts=/etc/dnsmasqhosts
```