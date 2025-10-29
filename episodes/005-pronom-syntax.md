---
title: "Introducing PRONOM syntax"
teaching: 10    # teaching time in minutes
exercises: 0    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- Why does PRONOM need syntax?
- What syntax exists?
- What does the syntax enable us to do?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Write our first PRONOM compliant signatures.
- Learn what a "BOF" is.

::::::::::::::::::::::::::::::::::::::::::::::::

* PRONOM needs syntax to enable the expression of format identification
signatures
* Needs to articulate specific byte patterns, at specific locations.
* Byte patterns use hexadecimal notation
* Syntax has overlap with ‘Regular Expressions’ (RegEx) but is distinct from
RegEx implementations in common code languages such as Java or
Python
* Highly flexible!

## Signature positions

* BOF: Beginning Of File - the signature sequence starts at, or near the
beginning of the file
* EOF: End Of File - the signature sequence starts at, or near the end of
the file
* Var: Variable - the signature sequence may be found anywhere within the file
* Offset - the position, relative to the BOF, or EOF, where the sequence
begins. 0 is default, meaning no offset. Since an offset of 0 means ‘starting
from the first byte’, an offset of 4 means ‘starting from the 5th byte’,
or ‘after the 4th byte’
* Maximum Offset - A further offset, relative to the initial Offset value
described above. The default is 0, meaning no further possible offset.

:::: callout

## Position and offset examples

BOF, Offset 0, Maximum offset 0: The signature sequence starts at the very
beginning of the file

BOF, Offset 4, Maximum offset 0: The signature sequence starts at exactly
position 0x04, the 5th byte

BOF, Offset 0, Maximum offset 4: The signature sequence may start anywhere
within the first 5 bytes

BOF, Offset 4, Maximum Offset 4: The signature sequence may start anywhere
from byte 5 through to byte 9

EOF, Offset 4, Maximum Offset 0: The signature sequence ends exactly 4 bytes
from the end of the file

::::

:::: discussion

### Questions

* Where can the byte sequence appear for BOF, Offset 16, Maximum offset 16?
* What do you think happens if you add an offset to a variably-positioned
sequence?

::::

## Most common syntax

<!-- TABLE: START -->

| Syntax element | Intended use | Example |
| ---- | ---- | ---- |
| Literal sequence | Just a plain signature sequence that appears as-is | <code>A1B2C3D4</code> |
| Infinite wildcard: <code>**\***</code> | The following sequence will appear at any point further in the file | <code>A1B2C3D4*E5F6A7B8</code> |
| Precise wildcard: <code>{**n**}</code> | The following sequence will appear after exactly the number of bytes specified | <code>A1B2C3D4{4}E5F6A7B8</code> |
| Wildcard range: <code>{**m-n**}</code> | The following sequence will appear at some point between the number of bytes specified | <code>A1B2C3D4{4-8}E5F6A7B8</code> |
| Either/Or: <code>(**a\|b**)</code> | The following sequence will be any of the sequences specified. Any number of sequences can be specified | <code>A1B2C3D4(0D|0A|0D0A)E5</code> |
| Byte range <code>[**a:b**]</code> | The next byte will be within the range specified | <code>A1B2C3D4[A4:B0]E5</code> |

<!-- TABLE: END -->

Most signatures will combine some or all of the above.

## Less common syntax

<!-- TABLE: START -->

| Syntax element | Intended use | Example |
| ---- | ---- | ---- |
| NOT sequence: <code>[!**a**]</code> | The following byte value is not this byte | <code>A1B2C3D4[!E5]F6</code> |
| Wildcard with infinite range: <code>{**m-\***}</code> | The following sequence will appear minimally after the first value specified, but otherwise anywhere else in the file | <code>A1B2C3D4{4-\*}E5F6A7B8</code> |
| Single wildcard: <code>**??**</code> | The following byte may have any value. This is functionally equivalent to <code>{1}</code> | <code>A1B2C3D4??E5F6A7B8</code> |
| NOT Byte range <code>[!**a:b**]</code> | The next byte will not be within the range specified | <code>A1B2C3D4[!A4:B0]E5</code> |
| Wildcards at a beginning of a BOF sequence, or end of an EOF sequence | This is functionally equivalent to specifying Offset/Maximum Offset, however this is not recommended | <code>{4}A1B2C3D4</code> or: <code>{0-4}A1B2C3D4</code> |

<!-- TABLE: END -->

## PRONOM Simplified Cheatsheet

:::: callout

### PRONOM terms, basic syntax and data model

#### Offset markers

**BOF** = Beginning of File.

**EOF** = End of File. Var = Variable (anywhere in the file)

**Offset/Max Offset** = Exact or positional range in which a signature starts

#### Wildcards

**??** = single wildcard byte, e.g. <code>AB??C3</code>

**\*** = 0-many wildcard bytes, e.g <code>BC*D4</code>

**{n}** = specific number of wildcard bytes, e.g. <code>A2{5}F3</code>

**{n-n}** = range of wildcard bytes, e.g. <code>4D{0-12}E4</code>

#### Byte range

**[hh:hh]** = single byte value between range, e.g <code>[00:FA]</code>

#### Either/or

**(hhhh|hhhh|hh)** = either/any or these byte values,
e.g. <code>(0D|0A|0D0A)</code>

#### Not

**[!hh]** = anything except this byte value, e.g. <code>ABCD[!01]E1</code>

::::

## Combining signatures and sequences

* A Format can have many Signatures - matching any Signature will
return a hit.
* A Signature may consist of any number of BOF, EOF, and Var sequences.
All sequences within a Signature must match to return a hit.
* Signature sequences must be logically positioned differently, so you
couldn’t have two BOF sequences with offset 0, maximum offset 0, but if
two signatures had BOF, offset 0, maximum offset 128, then both sequences
must appear within the first 128 bytes
* Most commonly, a signature sequence will only have a BOF sequence -
this is fine!
* By wary with purely Variable-positioned sequences - in isolation they
will cause the whole of your files to be scanned, so it’s always best to
include either a BOF or EOF as an ‘anchor’

<br>

:::: callout

### PRONOM in Practice

The team at The National Archives have worked hard to create good resources
for PRONOM research and development. The PRONOM in Practice guide is an
important set of documents to follow up on after this tutorial.

- [PRONOM in Practice documents](https://osf.io/2jbpe/files/osfstorage).
- [PRONOM technical guide](https://www.nationalarchives.gov.uk/aboutapps/fileformat/pdf/automatic_format_identification.pdf).

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
