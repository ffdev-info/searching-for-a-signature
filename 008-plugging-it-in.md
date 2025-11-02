---
title: "Plugging it in"
teaching: 10    # teaching time in minutes
exercises: 0    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- How do we use a signature file?
- Should I use DROID or Siegfried?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Be able to use a signature file with your preferred tool.

::::::::::::::::::::::::::::::::::::::::::::::::

## Plugging it in -- the easy way!

Once you have created a signature file you will want to plug it into your
preferred tool to test it against your files.

For this workshop we have developed a method of doing this through your
web-browser using Siegfried.

:::: testimonial

### Roy!

_Roy is a Siegfried companion tool and it enables us to compile signatures
alongside an existing DROID signature file. Siegfried then allows us to
run those signatures against our files._

Visit [ffdev.info](https://ffdev.info) to get access to an browser-based
version of Roy, and Siegfried for this next step!

::::

:::: callout

### WASM

This online version of Roy, and Siegfried uses Web Assembly (WASM) which means
everything is loaded locally in your browser. With Siegfried running
locally in your browser data is not transferred over the network to any
other computer, it is _sandboxed_ and kept local to your machine.

::::

1. Go to [ffdev.info](https://ffdev.info) and look at the Siegfried tab.
2. Select “roy: load signature’ and navigate to a signature file on your
hard disk. The signature file will be loaded into memory alongside
Siegfried’s default signature.
3. Now click “Siegfried: File ID” and select your test files
(or signature file) and click okay.
4. Siegfried will attempt to identify your file and should display a
result matching your signature file’s metadata.
5. Congratulations, you’ve managed to create your first signature file
and successfully identified your files using Siegfried.

:::: instructor

Trainers can skip or summarize the next section which runs through doing the
same locally, i.e. for a locally installed DROID or Siegfried.

::::

## Doing it locally

You may want to avail yourself on how to do this using your local tools.
We go into this in detail below for DROID and Siegfried.

:::: prereq

* the following assumes that you have either DROID or Siegfried
installed locally.
* the instructions assume some familiarity with running both tools and
getting forrmat identifications out of them.

::::

### DROID

1. With DROID installed you will find its configuration folder
in `%userprofile%/.droid6/`  on Windows and `~/.droid6` on Linux and Mac.
2. Signature files are stored in a folder called signature_files.
3. Given your signature file created above, copy and paste it into
this directory.

:::: callout

### Naming conventions

At time of writing there are no known limitations on the filename you use here.

::::

4. Once you have done this, launch DROID locally as you would normally.
5. Once DROID has loaded, navigate to `tools` -> `preferences`.
6. From the binary signatures drop-down look for your signature filename
(it will be minus the xml suffix).
7. Click ok to accept the changes.
8. While DROID opens a profile when it first loads, your new signature file
is not yet loaded into memory and so will not function in the currently
open profile.
8. Open a new profile by pressing ‘New’ it should open as Untitled-2 if you
have no other existing profiles.
10. You can now add files using ‘Add’ and attempt to identify these files
against your new signature file.
11. You can read more in the [DROID user guide][droid-1].

[droid-1]: https://cdn.nationalarchives.gov.uk/documents/information-management/droid-user-guide.pdf

### Siegfried

1. Run `sf -update` to ensure that a siegfried configuration folder has
been created.
2. Attempt to run roy build -nocontainer -noreports. If this fails,
download the latest DROID signature file into the folder described in the
error message by roy, e.g. `%userprofile%/siegfried/` on
Windows or `~/.local/share/siegfried/` on Linux (configurations may vary).
3. You can download the latest signature file from The National Archives:
[DROID signature files][droid-2].

[droid-2]: https://www.nationalarchives.gov.uk/aboutapps/pronom/droid-signature-files.htm

:::: callout

### Keeping it simple

This method allows us to test out signatures. We’re focusing on building
a signature file using just the DROID signature file here, however it is
possible to build a more comprehensive signature with roy. You can use a
PRONOM download by using `./roy harvest`, then by downloading the most
recent container file to the same siegfried folder above. See the siegfried
documentation for more information on building signatures.

::::

4. Once you have verified you can build a signature with roy, you need
to add your own signature file to the collection, you can do this
as follows: `./roy build -extend </path/to/your/signature/file.xml>`.
5. Given no errors you can now run siegfried against your own files and
they should identify against your new signature file!
6. For more information on building signatures with siegfried and roy,
check out siegfried’s wiki: [roy: inspect and debug][roy-1].

[roy-1]: https://github.com/richardlehane/siegfried/wiki/Inspect-and-Debug

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- You can use any tool!
- There are different merits to each.

::::::::::::::::::::::::::::::::::::::::::::::::
