# About Rosella

Rosella is a collection of modular building-block libraries, each of which
implements a particular family of patterns, best practices, or other useful
utilities.

Rosella is not a framework and is not monolithic. Rosella is offered as a
collection of individual libraries with very few dependencies between them.
The goal is to be able to provide small features to programmers who want them
without burdening anybody with unwanted overhead.

For complete details and documentation about Rosella and its component
libraries, see the [Rosella website][rosella_website]

[rosella_website]: http://whiteknight.github.com/Rosella

# Getting Rosella Source

Get a copy of the latest Rosella code from the Git repository with the
following command:

    git clone https://github.com/Whiteknight/Rosella.git Rosella

## Building Rosella From Source

To build Rosella you need to use Winxed:

    winxed setup.winxed build
    winxed setup.winxed test
    winxed setup.winxed install

Winxed is a language compiler for Parrot with a syntax similar to JavaScript.
Rosella libraries are written in Winxed, although they should be usable by
any software written in any language targetting Parrot.

## Using Rosella Release

The Rosella release tarball ships with all the `.pir` files from the
development build, and all the necessary utilities to build and install
Rosella with or without Winxed. With the release tarball extracted to a
directory, you can use the following sequence to build, test and install
Rosella:

    parrot setup.pir build
    parrot setup.pir test
    parrot setup.pir install

# Component Libraries

Rosella is composed of several libraries. Some are relatively mature, stable,
usable, and tested. Some are still young, in development, or unstable. For
details about all libraries, what they do, and how to use them, see the
[Rosella website][rosella_website].

## Stable Libraries

These libraries are considered stable enough for most uses. These are all
tested and documented.

1. Core (rosella/core.pbc)
2. Action (rosella/action.pbc)
3. Container (rosella/container.pbc)
4. Test (rosella/test.pbc)
5. TAP Harness (rosella/tap_harness.pbc)
6. Proxy (rosella/proxy.pbc)
7. Mock Object (rosella/mockobject.pbc)
8. Event (rosella/event.pbc)
9. Winxed (rosella/winxed.pbc)

## Libraries in Development

1. Prototype (rosella/prototype.pbc)
2. Query (rosella/query.pbc)
3. Decorate (rosella/decorate.pbc)
4. Path (rosella/path.pbc)
5. Contract (rosella/contract.pbc)
6. Memoize (rosella/memoize.pbc)

# Hacking

Rosella is open source software, and is always open to new contributors and
contributions. You can report bugs or request new features at the
[Rosella Issue Tracker][issues]. You can also create forks and submit pull
requests on Github.

[issues]: https://github.com/Whiteknight/Rosella/issues

# Using Rosella

functions prefixed with "private_", "protected_" or "internal_" are intended
for use by Rosella only, and should not be used in by external code. These
functions are not part of the external interface, are explicitly not tested,
and no guarantees are made about their performance or their continued
existance.

If you need a feature which is not exposed by the current public API, you can
request a feature addition or put together a patch to add it.

# Influences

Rosella is influenced by a number of other libraries and technologies. A list
of contributors and specific points of influence will be listed in the
"CREDITS" file.

