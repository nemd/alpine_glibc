Alpine base for glibc dependants 
================================

_!! Dirty initial version with hardcoced US locales !!_

Image includes some glibc packages as addition to default musl library. glibc packages prepared by
[Andy Shinn](https://github.com/andyshinn).


Usage
-----

```Dockerfile
FROM nemd/alpine_glibc
```

NOTE
----
I use helper script based on [fabric](http://www.fabfile.org) _(pip install fabric)_

```
Available commands:

    alpine_glibc
    build
    pull
    push
    rmi
 ```

