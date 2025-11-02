---
title: "Doing it for yourself"
teaching: 2    # teaching time in minutes
exercises: 13    # exercise time in minutes
---

:::::::::::::::::::::::::::::::::::::: questions

- Can you apply what you've learned?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Develop a signature.
- Create a signature file.
- Test the signature file against the workshop test files!

::::::::::::::::::::::::::::::::::::::::::::::::

## Doing it for yourself

Now that you've seen everything there is to know about writing file format
signatures and plugging them in, it is time to write one!

If you are doing this in a workshop environment, follow this thread. If you
are following along at home in a tutorial, then skip to the small exercise
below to find a task that you can complete at home.

## Workshop exercise

1. Split into groups.
1. Work together to create a signature.
1. Plug it into DROID/Siegfried
1. Good luck!

:::: callout

### You can do it!

Many of us have been developing file format signatures for years now and so
if you're new to this you will likely have questions. Your mentors 
are available to help guide your efforts. There will also be
an opportunity at the end to discuss how things went.

::::

:::: instructor

For iPRES we will look at going through the process of creating and
submitting a signature for the Quite OK Image format as it isn't yet
in PRONOM.

* https://qoiformat.org/qoi-specification.pdf

BOF is ‘qoif’,

EOF is 0x0000000000000001 -

The group can be invited to make signature suggestions based on the
specification example files, e.g. dice.qoi from the test images zip
available here: https://qoiformat.org.

::::

:::: challenge

### Quite ok!

Your task is to find an identification for the Quite OK Image format. Below
you will find a specification and some sample files. Take a look at these in
any order you wish to determine what may provde to be a good file format
signature for this new file format!

#### Specification

* [QOI Specification](./files/qoi-specification.pdf) also online
[here](https://qoiformat.org/qoi-specification.pdf).

#### QOI Sample files

* [Sample file 1](./files/edgecase.qoi).
* [Sample file 2](./files/kodim10.qoi).
* [Sample file 3](./files/kodim23.qoi).
* [Sample file 4](./files/qoi_logo.qoi).
* [Sample file 5](./files/testcard.qoi).

::::

### Wrapping up

If you have managed to successfully match QOI files using your own
signature file, then start to make some notes about what you did. Think
about what worked? What didn't work? What questions you still have? And
anything else that might be relevant. We will revisit this next section!

----

## Local exercise

The following challenge is simply to try and write a DROID compatible
signature file that can be used to identify three byte sequences designed
for this tutorial. There are sample files available, and all you have to
do is match all three!

:::: challenge

### Develop a signature for the following and test it in DROID or Siegfried

<!-- NB. Borrowed from x-fmt/231 – 00’s need replacing and expanding, e.g.
     with longer/shorter sequences
-->

<!--markdownlint-disable-->

56 45 52 53 49 **00** 4E **00 00 00 00 00 00 00** 43 48 41 52 53 45 54 **00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00** 43 4F 4C 55 4D 4E 53

56 45 52 53 49 **00** 4E **00 00 00 00 00 00 00** 43 48 41 52 53 45 54 **00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00** 43 4F 4C 55 4D 4E 53

56 45 52 53 49 **00** 4E **00 00 00 00 00 00 00** 43 48 41 52 53 45 54 **00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00** 43 4F 4C 55 4D 4E 53

<!--markdownlint-enable-->

#### Sample files

- [Sample file 1](./files/ffid-exercise-1.file).
- [Sample file 2](./files/ffid-exercise-2.file).
- [Sample file 3](./files/ffid-exercise-3.file).

:::::: solution

A solution will appear here shortly.

<!-- TODO provide a solution here that can be used to identify the three
     bytstreams provided.
-->

::::::

::::

:::: callout

### Taking note of the extension

You can also record a file format extension in a signature file. If you
correctly match the file format extension then tools like Siegfried and
DROID will highlight that the file has the correct extension and if a file
presents with the incorrect extension they will often warn about that as
well.

::::

### Wrapping up!

If you have managed to identify the three sample files using your own
signature file, congratulations!

If you're still wrestling with it, take a look at the solution and see if
you can plug it into Siegfried and make it work. Take note of how the
solution works or how you think it works and have a think about what wasn't
quite working in your own answer.

We'll wrap up in the next lesson.

<!-- NB. Keypoints should appear at the end of the markdown file. Aesthetically
     it looks like it's better with an additional newline so adding that
     here and using this comment as a separator to make it easy to read
     content.
-->

<br>

::::::::::::::::::::::::::::::::::::: keypoints

- You've all the tools needed to write file format signatures.
- It might not always work.
- It will certainly take trial and error.
- Persevere and keep working on it.
- Practice makes perfect!

::::::::::::::::::::::::::::::::::::::::::::::::
