---
title: "Reversing PRONOM syntax"
teaching: 5    # teaching time in minutes
exercises: 1    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- How do I understand if something should match a PRONOM signature?
- How do I translate syntax into a file?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Create a sample byte-sequence for a given signature.

::::::::::::::::::::::::::::::::::::::::::::::::

## Reversing PRONOM syntax

It can be useful to work backwards from a PRONOM signature, e.g. skeleton files
that test the mechanism works as expected.

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

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- You can reverse engineer PRONOM signautres to debug existing files.
- Reversing PRONOM syntax has other implications, e.g. skeleton files.

::::::::::::::::::::::::::::::::::::::::::::::::
