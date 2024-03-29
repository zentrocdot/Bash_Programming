# README

### ANSI Escape Sequences

> <p align="justify">ANSI Escape Sequences can be used to control the terminal window. Control of the cursor and the colored output of text are just two examples of many.</p>

> <p align="justify">In Bash scripts, the clear and reset commands can be replaced by ANSI escape sequences. On my laptop there is a significant difference in the execution time of e.g. <code>reset</code> or <code>tput reset</code> and the corresponding ANSI escape sequence.</p>

### Brief explanation

>  <p align="justify">An ANSI escape sequence consists of the CSI (Control Sequence Introducer) followed by the OSC (Operating System Command), which is a sequences of a number of bytes, and terminated by a predefined string. This ANSI escape sequence  defines what should be done within the terminal.</p>

<pre><code>CSI</code> = <code>ESC[</code> is written as <code>\e[</code> or <code>\033[</code></pre>    

### Usage

>  <p align="justify">E.g. a reset of the terminal window can be done using the ANSI escape sequences consisting of <kbd>CSI</kbd> + <kbd>c</kbd> in two ways:</p>

<pre>echo -en "\033c"    or    echo -en "\ec"
printf "\033c"      or    printf "\ec"</pre>

> <p align="justify">It has to be noted that there is no difference in using double quotes and single quotes. The usage of <code>echo</code> works only on implementations that support the option <code>-e</code></p>

### References

[1] manpages.debian.org/bookworm/manpages-de/console_codes.4.de.html

[2] en.wikipedia.org/wiki/ANSI_escape_code#CSI_(Control_Sequence_Introducer)_sequences
    
