# danglink

* badlink - find dangling, long or messy symlinks

* danglink - find dangling symlinks (that point to missing files)


# To install

```sh
sudo make install
```


# Examples

```sh
$ /usr/local/bin/badlink /usr/local/src

$ /usr/local/bin/danglink /usr/local/src
```


# To use


## badlink

```
/usr/local/bin/badlink [-h] [-v level] [-V] [-N] [-s symlinks] path ...

    -h          print help message and exit
    -v level    set verbosity level (def level: 0)
    -V          print version string and exit

    -N          do not process anything, just parse arguments (def: process something)

    -s symlinks     path to the symlinks tool (def: /usr/local/bin/symlinks)

    path ...    recursively search for dangling, messy, and/or lengthy synlinks under path(s)

Exit codes:
     0         all OK
     2         -h and help string printed or -V and version string printed
     3         command line error
     5	       some internal tool is not found or not an executable file
 >= 10         internal error

badlink version: 1.2.1 2025-04-06
```


## danglink

```
/usr/local/bin/danglink [-h] [-v level] [-V] [-N] [-s symlinks] path ...

    -h          print help message and exit
    -v level    set verbosity level (def level: 0)
    -V          print version string and exit

    -N          do not process anything, just parse arguments (def: process something)

    -s symlinks     path to the symlinks tool (def: /usr/local/bin/symlinks)

    path ...    recursively search for dangling symlinks under path(s)

Exit codes:
     0         all OK
     2         -h and help string printed or -V and version string printed
     3         command line error
     5	       some internal tool is not found or not an executable file
 >= 10         internal error

danglink version: 1.2.1 2025-04-06
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/danglink/security/policy)".
