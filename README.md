# Taiga Bootstrap Scripts (for Arch Linux) #

Scripts for initial deploy of taiga services.

It installs:

- taiga-back version 1.1.0
- taiga-front version 1.1.1

**WARNING: that scripts are in aplha state**

## Documentation ##

http://taigaio.github.io/taiga-doc/dist/setup-alternatives.html#setup-taiga-scripts

## Additional Info ##

Initialize PostgreSQL
    initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'

Start postgresql: 
    sudo systemctl enable postgresql && sudo systemctl start postgresql

and maybe read this [Arch Linux - PostgreSQL](https://wiki.archlinux.org/index.php/PostgreSQL)

## Community ##

[Taiga has a mailing list](http://groups.google.com/d/forum/taigaio). Feel free to join it and ask any questions you may have.

To subscribe for announcements of releases, important changes and so on, please follow [@taigaio](https://twitter.com/taigaio) on Twitter.
