# reprepro

https://wikitech.wikimedia.org/wiki/Reprepro

https://docs.debops.org/en/latest/ansible/roles/reprepro/defaults-detailed.html


## nginx İle Açık DEBIAN Paket Havuzuna Dönüştürelim

`/etc/nginx/sites-available/default` dosyasının içeriğini aşağıdaki gibi yapalım:

```
server {

        ## Let your repository be the root directory
        root            /var/repositories;

        ## Always good to log
        access_log      /var/log/nginx/repo.access.log;
        error_log       /var/log/nginx/repo.error.log;

        ## Prevent access to Reprepro's files
        location ~ /(db|conf) {
                deny            all;
                return          404;
        }
}
```

## Komutlar



```
$ reprepro list xenial-stable
$ reprepro list xenial-unstable
```


![1673533525638](image/README/1673533525638.png)



# freight

https://github.com/rcrowley/freight
