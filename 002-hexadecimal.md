---
title: "Hexadecimal"
teaching: 0    # teaching time in minutes
exercises: 0    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

* What is hexadecimal?
* Why is it important?
* What are the basics of hexadecimal we need to understand?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

* Learn what hexadecimal is.
* Learn how to construct a hexadecimal sequence with arbitrary meaning.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction to hexadecimal

* Hexadecimal is a way of representing numbers.
* Just as decimal is Base10, hexadecimal is just Base16.

|      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |      |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| DEC  | 0    | 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    | 9    | 10   | 11   | 12   | 13   | 14   | 15   |
| HEX  | 0    | 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    | 9    | A    | B    | C    | D    | E    | F    |
| DEX  | 16   | 17   | 18   | 19   | 20   | 21   | 22   | 23   | 24   | 25   | 26   | 27   | 28   | 29   | 30   | 31   |
| HEX  | 10   | 11   | 12   | 13   | 14   | 15   | 16   | 17   | 18   | 19   | 1A   | 1B   | 1C   | 1D   | 1E   | 1F   |

<br>

* While you can learn to convert decimal to hexadecimal, you are more likely
to convert hexadecimal to decimal.

```text
0x00 = (16 x 0 = 0) + (1 x 0 = 1) = 0
0x01 = (16 x 0 = 0) + (1 x 1 = 1) = 1
0x0A = (16 x 0 = 0) + (1 x 10 = 10) = 10
0xFF = (16 x 15 = 240) + (1 x 15 = 15) = 255
```

<br>

:::: callout

### Zero to hero!

Zero is an important number in computer science and we will see it often
when we analyse digital records.

::::

:::: callout

### What does 0x mean?

We use the `0x` prefix to signify hexadecimal. When we document hex
sequences like above `0xE4 0xB8 0x96` is also equivalent to `0xE4B896`. How
you choose write this information depends on context.

::::

* A single hexadecimal number is a convenient representation of 1-byte,
i.e. 8 bits of binary which is the smallest and most convenient unit of
data used in computer memory.

:::: callout

### Binary

We won’t go into binary here, but if you ever want to look at the binary
representation of a number, modern search engines can do the conversion
for you if you ask: 255 in binary (just as you can ask: 255 in hexadecimal.

* 0 (b00000000) is the smallest number you can represent in binary in a
single byte,
* 255 (b11111111) is the largest possible value.

::::

### ASCII table

* That might feel like a lot, but before we have to convert numbers every
which way, we have another tool at our disposal, a lookup table which is
still relevant in our research.

* In the lookup table below (the ASCII table) you can see how bytes take on
more meaning to a computer, e.g. as control symbols, punctuation symbols,
numbers, and letters.

* For the numbers and letters, this is just one encoding. We will talk about
the importance of that below but first let’s look at the table for a second.

:::: discussion

### question

When you look at the table, think about your favorite (decimal) number.

* What symbol does it represent?
* What’s your favourite (hexadecimal) number, what symbol does it represent?

::::

<br>

### ASCII table

| Dec | Hex | Char    | Dec | Hex | Char    | Dec | Hex | Char    | Dec | Hex | Char    | Dec | Hex | Char    |
|-----|-----|---------|-----|-----|---------|-----|-----|---------|-----|-----|---------|-----|-----|---------|
| 0   | 0   | NUL     | 25  | 19  | EM      | 51  | 33  | 3       | 77  | 4D  | M       | 103 | 67  | g       |
| 1   | 1   | SOH     | 26  | 1A  | SUB     | 52  | 34  | 4       | 78  | 4E  | N       | 104 | 68  | h       |
| 2   | 2   | STX     | 27  | 1B  | ESC     | 53  | 35  | 5       | 79  | 4F  | O       | 105 | 69  | i       |
| 3   | 3   | ETX     | 28  | 1C  | FS      | 54  | 36  | 6       | 80  | 50  | P       | 106 | 6A  | j       |
| 4   | 4   | EOT     | 29  | 1D  | GS      | 55  | 37  | 7       | 81  | 51  | Q       | 107 | 6B  | k       |
| 5   | 5   | ENQ     | 30  | 1E  | RS      | 56  | 38  | 8       | 82  | 52  | R       | 108 | 6C  | l       |
| 6   | 6   | ACK     | 31  | 1F  | US      | 57  | 39  | 9       | 83  | 53  | S       | 109 | 6D  | m       |
| 7   | 7   | BEL     | 32  | 20  | space   | 58  | 3A  | :       | 84  | 54  | T       | 110 | 6E  | n       |
| 8   | 8   | BS      | 33  | 21  | !       | 59  | 3B  | ;       | 85  | 55  | U       | 111 | 6F  | o       |
| 9   | 9   | HT      | 34  | 22  | "       | 60  | 3C  | <       | 86  | 56  | V       | 112 | 70  | p       |
| 10  | 0A  | LF      | 35  | 23  | #       | 61  | 3D  | =       | 87  | 57  | W       | 113 | 71  | q       |
| 11  | 0B  | VT      | 36  | 24  | $       | 62  | 3E  | >       | 88  | 58  | X       | 114 | 72  | r       |
| 12  | 0C  | FF      | 37  | 25  | %       | 63  | 3F  | ?       | 89  | 59  | Y       | 115 | 73  | s       |
| 13  | 0D  | CR      | 38  | 26  | &       | 64  | 40  | @       | 90  | 5A  | Z       | 116 | 74  | t       |
| 14  | 0E  | SO      | 39  | 27  |         | 65  | 41  | A       | 91  | 5B  | [       | 117 | 75  | u       |
| 15  | 0F  | SI      | 40  | 28  | (       | 66  | 42  | B       | 92  | 5C  | \       | 118 | 76  | v       |
| 16  | 10  | DLE     | 41  | 29  | )       | 67  | 43  | C       | 93  | 5D  | ]       | 119 | 77  | w       |
| 17  | 11  | DC1     | 42  | 2A  | *       | 68  | 44  | D       | 94  | 5E  | ^       | 120 | 78  | x       |
| 18  | 12  | DC2     | 43  | 2B  | +       | 69  | 45  | E       | 95  | 5F  | _       | 121 | 79  | y       |
| 19  | 13  | DC3     | 44  | 2C  | ,       | 70  | 46  | F       | 96  | 60  | `       | 122 | 7A  | z       |
| 20  | 14  | DC4     | 45  | 2D  | -       | 71  | 47  | G       | 97  | 61  | a       | 123 | 7B  | {       |
| 21  | 15  | NAK     | 46  | 2E  | .       | 72  | 48  | H       | 98  | 62  | b       | 124 | 7C  | |       |
| 22  | 16  | SYN     | 47  | 2F  | /       | 73  | 49  | I       | 99  | 63  | c       | 125 | 7D  | }       |
| 23  | 17  | ETB     | 48  | 30  | 0       | 74  | 4A  | J       | 100 | 64  | d       | 126 | 7E  | ~       |
| 24  | 18  | CAN     | 49  | 31  | 1       | 75  | 4B  | K       | 101 | 65  | e       | 127 | 7F  | DEL     |
|     |     |         | 50  | 32  |         | 76  | 4C  | L       | 102 | 66  | f       |     |     |         |

<!-- created with https://ozh.github.io/ascii-tables/
     and https://www.rapidtables.com/code/text/ascii-table.html
-->

## Encodings

* In a file format, they translate to some information that a computer
can understand, e.g. numbers 0x30 to 0x39 are (universally)
the numbers 0 - 9.
* In the olden days software devs only thought about english, and so
character encodings started life there, and then became more
inclusive – today we have unicode
* Looking at files from the early days can be tricky when doing digital
forensics but file format signature development asks two things:

1. That we understand the samples we have are the same format.
2. That we can find patterns in these files, even if we don’t always
know what those patterns mean.

<br>

### Example Māori macrons in UTF-8

<br>

`0xC4 0x81` = ā

`0xC4 0x93` = ē

`0xC4 0xAB` = ī

`0xC5 0x8D` = ō

`0xC5 0xAB` = ū

`0xC4 0x80` = Ā

`0xC4 0x92` = Ē

`0xC4 0xAA` = Ī

`0xC5 0x8C` = Ō

`0xC5 0xAA` = Ū

<br>

### World in Japanese in UTF-8

<br>

`0xE3 0x81 0x93` = こ

`0xE3 0x82 0x93` = ん

`0xE3 0x81 0xAB` = に

`0xE3 0x81 0xA1` = ち

`0xE3 0x81 0xAF` = は

`0xE4 0xB8 0x96` = 世

`0xE7 0x95 0x8C` = 界


<!-- NB. I found this site useful: https://www.compart.com/en/unicode/ for
     whatever reason it has a lot of info.
-->

## Famous Byte sequences

* `D0CF11E0`
* `II`
* `MM`
* `GIF89a`
* `PK`

:::: instructor

### Optional quiz

You can ask the room if they know what these byte sequences might be.

::::

:::: spoiler

### Do you recognize them?

* Microsoft Office
* TIFF
* Also TIFF!
* GIF
* ZIP

::::

:::: callout

### Magic numbers: your first file format signatures

You will begin to recognize these sequences in your file format research!

::::

## Putting it together

Can you use the ASCII table above to construct a byte-sequence?

:::: challenge

Write down the hexadecimal sequence for "Hello world".

:::::: solution

```binary
48 65 6C 6C 6F 20 77 6F 72 6C 64
```

::::::

::::



<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

* Hexadecimal is a number system.
* Hexadecimal makes it easier to understand “binary”.
* Hexadecimal is mapped to signals and characters that have meaning to a computer.
* Hexadecimal can take on arbitrary meaning through “encodings”.
* Hexadecimal is the foundation for a PRONOM signature!

::::::::::::::::::::::::::::::::::::::::::::::::
