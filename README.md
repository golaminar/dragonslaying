# Dragonslaying

In this repository you will find everything you need to participate in the Dragonslaying workshop.

## Pre-requisites

* Ruby 3.0 or above (we recommend installing via [ruby-install](https://github.com/postmodern/ruby-install) and changing to it using [chruby](https://github.com/postmodern/chruby)).
* Make (on OS X, `xcode-select --install`. On Debian-like systems, `apt install build-essential`).
* [Git](https://git-scm.com/downloads)
* A text editor

## Setup and running the tests

Once all the above pre-requisites are installed, you should be able to run `make` in the root of the repository and see 3 tests running and passing.

## Other

During the workshop, you will sometimes be asked to run other `make` commands. These commands will modify the file `spec/story_specs.rb`. _You should never edit this file manually_. When you have run these commands, please include the modified version of the file in your next commit.
