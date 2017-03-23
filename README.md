# r9-git-tools
Useful scripts and git extensions for working with the R9 repository. Most notable feature is the `wiki` tool, which automatically opens the wiki entry creation page and populates it based on the content of the last commits.

## Stand-alone scripts

### wiki
Automates the tedious process of creating relmail wiki entries for your commits. This command takes a single argument: 1 if you have just pushed to master, 2 if you have just doubled, and 3 if you have just tripled (default is 1). This is identical to the `-n` parameter taken by relmail. Running this script after pushing will open the "create wiki entry" page in chrome, populate the title based on your commit message and what type of push you did (double, triple, etc) and set up the relmail contents in your clipboard. All you should have to do is hit paste, and your wiki entry is taken care of.

This tool does not submit the wiki entry it creates - you are free to edit and add to it before submitting manually.

### ticket
This tool scans your open chrome tabs and scrapes the numbers/names of any open jira tickets. It's typically used to auto-gen commit messages, e.g. `git commit -m "$(ticket)"` (assuming only one ticket is open in chrome.)

## Git extensions

### git single
Pushes a single commit to master and generates a standard relmail wiki page.

### git double
Pushes a single commit to master and B and generates a double relmail wiki page.

### git triple
pushes a single commit to master, B, and production, then generates a triple relamil wiki page. *Use with caution.*

### git lastcom
Prints the hash of the last commit made to the current branch.

## git lastbr
Prints the short name (e.g. R350b) of the last R9 branch. This is the B branch.

## git prodbr
Prints the short name (e.g. R350a) of the current production R9 branch.

## git comtix
Commits any currently stages files with a commit message corresponding to the number and name of the current JIRA ticket open in chrome. *Only works properly with a single JIRA ticket open and a single chrome window open.*

### Dependencies
This package is based with the standard R9 toolset in mind (macbook pro, relmail, etc.) and may not work in other environments. The wiki/JIRA manipulation used here only works with Chrome.

Also depends on `chrome-cli`, which is available in brew. 

### Installation

With chrome-cli installed, simply added all the scripts in this directory (the files without extensions) to your `PATH`. You may have to set the scripts as executable.

Assuming you have a standard brew setup and own /usr/local/bin, you can simply clone this repo anywhere that is convenient, `cd` into it, and run `sh install.sh`.
