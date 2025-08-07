---
title: "PRONOM syntax"
teaching: 5    # teaching time in minutes
exercises: 1    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- Why does PRONOM need syntax?
- What syntax exists?
- What does the syntax enable us to do?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Write our first PRONOM compliant signatures.
- Learn what a BOF is.

::::::::::::::::::::::::::::::::::::::::::::::::

## PRONOM syntax

??
: wildcard matching any pair of hexadecimal values (i.e. a single byte).

*
: wildcard matching any number of bytes (0 or more).

{n}
: wildcard matching n bytes, where n is an integer.

{m-n}
: wildcard matching between m-n bytes inclusive, where m and n are integers or ‘*’.

(a|b)
: wildcard matching one from a list of values (e.g. a or b), where each value is a hexadecimal byte sequence of arbitrary length

[a:b]
: wildcard matching any sequence of bytes which lies lexicographically between a and b

[!a]
: wildcard matching any sequence of bytes other than a itself (where a is a byte sequence containing no wildcards).

[!a:b]
: wildcard matching any sequence of bytes which does not lie lexicographically between a and b


:::: challenge

What syntax might you use to provide a list of options of known bytes?

:::::: solution

TODO...

::::::

::::

:::: challenge

What syntax might you use to allow for the identification of a number that
exists between a lower and upper bound?

:::::: solution

TODO...

::::::

::::

## A simple example

Given the following sequences how would we write a signature?

AAAA**01**BBBB

AAAA**02**BBBB

AAAA**03**BBBB

:::: spoiler

BOF: 0; AAAA??BBBB

::::

:::: spoiler

### less idiomatic

Answer 2, less idiomatic:
BOF: 0; AAAA{1}BBBB

::::

:::: spoiler

### Other alternatives

Would work but is less precise:

BOF: 0; AAAA*BBBB

Would work, but as a developer you may want to find other examples. You may
know it can only ever be these values.

BOF: 0; AAAA(01|02|03)BBBB

Would also work, but similar decision to make:

BOF: 0; AAAA[01:03]BBB

::::

## A complex example

Given the following sequences, how would we write a signature?

F0 01 00 01 **66 74 79 70 33 67 65 36 00 00 01 00 A0 61 75 74 68 6F 72 3A 20 74
2E** 63 6F 6C 65 74 74 65 **F1** 32 30 32 35 **FF D9**

F0 02 00 02 **66 74 79 70 33 67 65 36 00 00 01 00 A0 61 75 74 68 6F 72 3A 20 73
2E** 6A 2E 62 61 63 68 F1 31 39 32 34 **FF D9**

F0 03 00 03 **66 74 79 70 33 67 65 36 00 00 01 00 A0 61 75 74 68 6F 72 3A 20 6C
2E** 76 2E 62 65 65 74 68 6F 76 65 6E **F1** 31 38 32 33 **FF D9**

:::: spoiler

### One possible solution

BOF: offset 4
_ _ _ _ 66 74 79 70 33 67 65 36 00 00 01 00 A0 61 75 74 68 6F 72 3A 20 6C 2E * F1 {4} FF D9

::::

<be>

:::: discussion

1. Questions about either example?
2. Other ways you might do this?

::::

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- PRONOM syntax is a regular expression (regex).
- PRONOM syntax can be combined in multiple ways.
- Sometimes there is more than one way to write a signature.

::::::::::::::::::::::::::::::::::::::::::::::::
