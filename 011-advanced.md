---
title: "Advanced PRONOM"
teaching: 10    # teaching time in minutes
exercises: 0    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- What’s the ‘correct’ length for a quality identification signature?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Understand what a good signature looks like. What makes it ‘good’?

::::::::::::::::::::::::::::::::::::::::::::::::

## Advanced PRONOM

Additional syntax and turning these into published signatures

Possible headings...

* A signature == byte sequence + metadata + priority.
* We use a priority because some identifications need to build on
another, e.g. variants of XML, PDF, JPEG… at the foundation is a common
marker and its specificity is provided by something somewhere else in
the bytestream.
* Using EOF sequences -- they're like BOF sequences, but EOF...
* Additional syntax, new byteseek syntax
* Using priorities
* Advanced research techniques
* Advanced recording of progress
* Submitting to PRONOM

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- Ideally minimally 4 bytes, but plain words by themselves are more likely to cause clashes.

::::::::::::::::::::::::::::::::::::::::::::::::
