redis
=====

Advanced key-value store.

Tags
----
  * `latest` uses `colstrom/alpine` as a base. It weighs in at ~6MB, but provides nothing beyond redis (and busybox).
  * `ubuntu` uses `colstrom/ubuntu-core` as a base. It is significantly heavier (>200MB) but may be better suited, depending on your needs.

Exposed Ports
-------------
  * 6379

Volumes
-------
  * `/var/lib/redis/`

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
