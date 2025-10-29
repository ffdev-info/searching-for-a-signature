# Searching for a signature: A FFID workshop

This is a tutorial that has been prepared for iPRES2025 in Wellington.

You will find a link to the compiled workshop on in the 'About' section of
this repository to the right of this text.

For information about how to cite this workshop in your own work please
look at the information in [CITATION.cff](./CITATION.cff).

## Carpentries Workbench

This lesson uses the amazing template from
[The Carpentries Workbench][workbench].

[workbench]: https://carpentries.github.io/sandpaper-docs/

### Building the workbench

The repository is supported by a [`justfile`][just-1]. The easiest way to
install `just` is to first install `cargo` and then run `cargo install just`.

See [these instructions][just-2] for more information on installing `cargo`.

Once you have installed `just` run the commands `just inspect-deps` to
check your current dependencies. Run `just deps` to install all those that
are required by the site.

`just workbench` will build and launch the tutorial on a local port.

[just-1]: https://github.com/casey/just
[just-2]: https://doc.rust-lang.org/cargo/getting-started/installation.html
