# Tips and Tricks

> [Note]
> Subsequently ~$ represented the command prompt. 

## Prime numbers

<p align="justify">Prime numbers can be determined with a bash script or with the command factor.</p>

    ~$ factor 32
    ~$ 32: 2 2 2 2 2

<p align="justify">To get only the prime numbers, use the following command.</p>

    ~$ factor 32 | sed 's/^.*: \(.*\)/\1/'
    ~$ 2 2 2 2 2

## Prevent overwriting files

<p align="justify">To prevent overwriting files the command shopt can be used.</p>

    ~$ echo "foo" > "bar"
    ~$ set -o noclobber
    ~$ echo "foo" > "bar"
    ~$ bash: bar: cannot overwrite existing file

<p align="justify">The former foo and bar are so-called common metasyntactic variables.</p>