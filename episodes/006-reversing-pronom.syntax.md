---
title: "Reversing PRONOM syntax"
teaching: 15    # teaching time in minutes
exercises: 0    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- How do I understand if something should match a PRONOM signature?
- How do I translate syntax into a file?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Create a sample byte-sequence for a given signature.

::::::::::::::::::::::::::::::::::::::::::::::::

## Reversing PRONOM syntax

* As you write more signatures you begin to develop a need to debug yours,
and existing signatures.

* It can be useful to work backwards from a PRONOM signature to create an
outline digital file that triggers a signature’s patterns.

* These outline digital files are called skeleton files.


:::: challenge

Given the sequence:

AABB??CC{1-10}DD*010203

Can you write a byte sequence that will match in DROID?

:::::: solution

### One possible solution

AABB**00**CC**FFFFFF**DD**00000000**010203

::::::

:::::: solution

### Another possible solution

AABB**00**CC**FFFFFF**DD**00000000**010203

::::::

::::

* You can jot down byte-sequences in any notepad application you have
available to you (even google docs!).

* Byte sequences must have an even number of characters, i.e. one byte is
always two characters.

* You can copy and paste the bytes into a hex editor. As we’ve seen, these
are usually split into two panes, one for bytes and one for a
representation of bytes in ASCII or another encoding.

:::: callout

### Try it!

Try it on [https://hexed.it/](https://hexed.it/) if you have a moment.

1. Take one of the solutions above and copy it into your clipboard.
2. Click anywhere in the editor pane and press ctrl-v.
3. Select “create new file” and specify how the data should be interpreted as “hexadecimal values”.
4. You will see the bytes from the solution in the left hand side of the window and its ASCII interpretation on the right.
5. You can then elect to download and name the file via ‘Save As’.

::::

:::: challenge

Create a skeleton file using the bytes `5A5854617065211A01` and run it
against DROID, FIDO, or Siegfried, what PUID do you get?

:::::: solution

fmt/1000 ZX Tape Format

::::::

::::

* There are no concrete rules for how to convert a PRONOM signature into a
skeleton file.

* A good rule of thumb is to always convert wildcards and unknown
values ( \*, ??, {n}, {n-m} ) to zero bytes as they will help make it
easier to see how the file is spaced out.

* For sequences described by PRONOM as optional or belonging to one out of
a set of values ( (aa|bb), (aa|bb|cccc), (aaaa|ffff) ) you only need to
select one byte or set of bytes..

* It’s a good idea to create some space between sets of sequences, for
example between BOF and EOF sequences. Pick a number between
1 and 20 bytes (or as many bytes as you like) and enter that many
null bytes between sequences.

* Observe the way the skeleton file (bytes) below is spaced where zeros
are used to replace wildcards in the signature.

|       |       |
| :---- | :---- |
| Skeleton file |`41 75 74 6F 43 41 44 20 42 69 6E 61 72 79 20 44 58 46 0D 0A 1A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 53 45 43 54 49 4F 4E 00 02 48 45 41 44 45 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 09 24 41 43 41 44 56 45 52 00 01 41 43 31 30 31 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 4E 44 53 45 43 00 00 45 4F 46 00` |
| BOF | 4175746F4341442042696E617279204458460D0A1A00**\***0053454354494F4E0002**{0-1}**48454144455200**\***09**{0-1}**24414341445645520001**{0-1}**41433130313200**\***00454E4453454300 |
| EOF | 00454F4600 |
| Format| fmt/82: Drawing Interchange File Format (Binary): R13 |

* You can always measure your success in creating a skeleton file against
the signature itself. Once you’ve created a good skeleton file it will
match the signature that you are investigating.

:::: callout

### Making use of skeleton files

Skeleton files have different uses. They enable us to:

* Test signatures.
* Identify false positives and multiple-identifications.
* Test the different format identification implementations.
* Share our work with the PRONOM team in lieu of sample files
(or in support of).

::::

:::: callout

### Your resource for skeleton files

Siegfried’s build process uses a set of skeleton files and stores them
in a repository called builder. You can find those at the link below.

* [Richard Lehane's Builder](https://github.com/richardlehane/builder/releases)

::::

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- You can reverse engineer PRONOM signatures to debug existing files.
- Reversing PRONOM syntax has other implications, e.g. skeleton files.

::::::::::::::::::::::::::::::::::::::::::::::::
