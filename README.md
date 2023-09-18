# Dragonslaying

In this repository you will find everything you need to participate in the Dragonslaying workshop.

## Pre-requisites

* Ruby 3.0 or above (we recommend installing via [ruby-install](https://github.com/postmodern/ruby-install) and changing to it using [chruby](https://github.com/postmodern/chruby)).
* Make (on OS X, `xcode-select --install`. On Debian-like systems, `apt install build-essential`).
* [Git](https://git-scm.com/downloads)
* A text editor

## Setup and running the tests

If you are on Linux or another platform using GNU sed, copy `Makefile.gnu` to `Makefile`.

If you are on Mac OS X, copy `Makefile.osx` to `Makefile`.

If you are on Windows, we strongly recommend using WSL2 (this is Tom's environment of choice). A native Windows dev setup (e.g. with Cygwin) will probably work with the `Makefile.gnu` file, but WSL2 is tested to work. For WSL2 setup instructions, see https://learn.microsoft.com/en-us/windows/wsl/install.

Once all the above pre-requisites are installed, you should be able to run `make` in the root of the repository and see 3 tests running and passing.

## Other

During the workshop, you will sometimes be asked to run other `make` commands. These commands will modify the file `spec/story_specs.rb`. _You should never edit this file manually_. When you have run these commands, please include the modified version of the file in your next commit.

## Rules of the game

We are writing a story together using Git.

You will complete tasks by writing the story according to the instructions written on the card. 

You will be evaluated as a team on the number of tasks that you complete within the time limit.

Your changes need to be committed to the shared main branch for the task to be considered complete.

All story changes must be seen by at least two people (e.g. author and reviewer) before they are applied to the shared main branch.

Tasks will also only be considered complete if the test suite – which is run with the command make in the root of the repository and which runs on GitHub – is passing and if a manual inspection of the story by the product owner (Tom) shows it to satisfy all requirements from all completed tasks.

Each person may only work on one task at a time. You may not take a second card until your current task is complete.

A maximum of two people may sit at a computer at any given time.

You may only directly edit the file story.txt and no other file in the repository.

Chapters consist of a minimum of 3 and a maximum of 5 sentences.

Each sentence is on its own line.

Each chapter is preceded by a chapter heading in Markdown format on its own line, e.g. 
```
# Chapter 1
```

Chapter headings and chapters are separated from each other with empty lines.

For example, a chapter and the beginning of the next chapter should look like this:
```
# Chapter 1

Kevin was an ordinary boy in an ordinary village.
He woke up on Monday, and brushed his teeth.
He ate his corn flakes and looked out the window.
“What a promising day,” he exclaimed.

# Chapter 2

An ill wind…
```

Chapters appear in increasing numerical order.

When a task asks you to enable a test, you must run the listed make command in your terminal and commit the resulting change to spec/story_specs.rb along with your changes to the story.

Sometimes a task will ask you to change something that is not already in the story. These tasks are considered complete immediately. However, bear in mind that constraints introduced by these tasks will apply to all subsequent work. Example: if you are asked to make the second chapter consist only of one-syllable words before there is a second chapter, you immediately complete the task. When a subsequent player writes the second chapter, if they use any two-syllable words, the tests will fail and the task will not be considered complete.

## Preparing for the workshop (Laminar use only)

To reset this repository for a new workshop run, `git reset --hard` to the tag `beginning` and force push.
