---
title: FAQ
---

## What if I haven’t a FF spec?

File Format Specifications are not always available to the public, they often
have the full information for parsing the file, but is not available, multiple
samples can be used to infer enough for identification.

## What a file format is and isn't?

A **file format** is a standardized way that information is encoded for
storage in a computer file. File formats can be open or proprietary, binary
or text, compressed or uncompressed. A file format is not self describing and
is not required to follow a known structure. File formats can be a single
file or a group of files.

## Haven't all formats been identified?

There are an unknown number of file formats created over the years and many
more created practically everyday.

## Will PRONOM write a signature for me?

The PRONOM team at the UK National Archives will accept requests for file
formats and may research them, but prefer samples and signatures to ensure
inclusion in an upcoming release.

## How do I improve an existing signature?

There are many signatures in PRONOM which either don’t have a signature or
need additional information to improve the signature. If you have samples
which don’t match existing signatures, reach out and help improve the registry.

## Do File Format signatures change?

Absolutely, PRONOM and other registries are constantly updating and improving
their signatures as new information or more research is conducted. Software
developers also change their formats to meet new needs causing existing
signatures to fail identification.

## Isn't an extension enough?

An extension is simple a file label and most operating systems use the
extension simply to know which default software it can be used to open the
file, but that association is easily changed. Some extensions are used for
multiple formats and there is no registry of extensions to control their use.

## Can all file formats be identified through a signature?

Most standard formats can be identified, but many text based files, cannot.
There are also multi-part formats and formats with bytes that are not static
in every file. There are also container formats with variable filenames which
currently don’t work well with the PRONOM signature syntax.
