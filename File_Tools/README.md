# :card_file_box: Tools For Files

> [!NOTE]
> <p align="justify">The existing scripts were tested with the OS Linux Mint 21.3 code name Virginia using the GNU Bash shell version 5.x.x in a GNOME-Terminal version 3.x.x. If a description is given in the scripts itself, you will find a explanation of what the program code does.</p> 

### Introduction

<p align="justify">Standard tasks in daily work are the removal of blank lines and the removal of leading and trailing spaces in files. It can also be useful to remove comments from files. This can be done within a <code>Bash</code> script. But there are easier ways to work with file content.</p>

<p align="justify">In addition to <code>Bash</code> and its commands, <code>sed</code> or <code>awk</code> can also be used to manipulate data in files. Both are programming languages, even if they are often not seen as such. It should be noted that the latter two programming languages are also  Turing-complete.</p>

### The stream editor sed

<p align="justify">sed is the abbreviation for <b>s</b>tream <b>ed</b>itor. The stream editor <code>sed</code> can be used to perform manipulations on an input data stream. It is possible to write more or less complex programs with <code>sed</code>.</p>

sed is reading a file in whole line by line.

Example:

    # Print the whole file content line by line.
    sed -n 'p' $filename

### The scripting language awk

<p align="justify">awk is named after the surnames of the awk authors Alfred V. <b>A</b>ho, Peter J. <b>W</b>einberger und Brian W. <b>K</b>ernighan. It is also possible to write more or less complex programs with <code>awk</code>.</p>

awk is reading a file in whole line by line.

Example:

    # Print the whole file content line by line.
    awk '{print}' $filename

### Scripts

<p align="justify">You will find scripts which are written using <code>Bash</code>, <code>sed</code> and <code>awk</code>. To make <code>sed</code> and <code>awk</code> code portable these scripts are located in a outer <code>Bash</code> script.</p>

<p align="justify">The scripts in the main folder have been tested and work as expected. The scripts in the <code>tmp</code> folder needs a little bit more work to get the expected results. They are intended for testing purposes.</p>

### To-Do

<p align="justify">In some scripts the documentation needs to be improved. When in use, it has to be checked whether the latest versions may still contain errors.</p>

### References

[1] www&#8203;.gnu.org/software/bash/manual/bash.pdf

[2] www&#8203;.gnu.org/software/gawk/manual/gawk.html

[3] www&#8203;.gnu.org/software/sed/manual/sed.html

[4] manpages.ubuntu.com/manpages/jammy/en/man1/awk.1posix.html

[5] manpages.ubuntu.com/manpages/jammy/en/man1/sed.1.html

[6] www&#8203;.regular-expressions.info/

> [!WARNING]
> Especially the streamline editor <code>sed</code> using the inline option <code>-i</code> maybe will damage a given file. Make a copy if you did not test a script beforehand.






