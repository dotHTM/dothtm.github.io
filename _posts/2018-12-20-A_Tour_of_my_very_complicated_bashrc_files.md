---
title: "A Tour of my very complicated bashrc files"
date: "2018-12-20T11:12:29-06:00"
layout: post
categories: blog
desc:
    Sharing dot-files is a wonderful practice amongst developers and sysadmins for open mentorship that encourages people to stumble across features and settings they didn't realize their tools already possessed. Sort of like how machinists trade stories and tips, how to "get around the math" of some geometry problem (that ironically makes that math more intuitive if they ever came back).
---

Sharing dot-files is a wonderful practice amongst developers and sysadmins for open mentorship that encourages people to stumble across features and settings they didn't realize their tools already possessed. Sort of like how machinists trade stories and tips, how to "get around the math" of some geometry problem (that ironically makes that math more intuitive if they ever came back).

But along with the problem of keeping dot-files up-to-date comes an issue about not accidentally exposing private configurations, and I fear that some of those repos may not be as effective as they might intend for this safety.

This is my journey at building something mostly simple, and yet featured for extensibility.

# In The Before Times, The Long-long Ago

I used to keep all my customizations in `.bashrc` and went along merrily in my days. Trouble is, after some time, I'd forget what aliases I'd setup, and kept re-engineering them over and over, realizing later that I had dupes, some that never got used past the week I wrote them, and other such cruft building in the corners of my shell, such that a terminal window was taking longer to "boot up" than it was to run the command I need to run.

Portability was an issue too, as all my customizations died unless backed up and transfered to it's home. I'd include my "bash hacks" folder into my paths export, and largely I was constrained to subshells and not being able to automatically `cd` after some work was done.

I probably had some simple clever ideas back then, but since I was mostly tackling new problems on other people's machines, I pretty much only customized my machine by installing other commands via [MacPorts](https://macports.org).

I've since adopted [Homebrew](https://brew.sh) and learned proper git on the command line and a few GUIs and decided to start sharing some of my tricks in a more stable location (ironically) than my paid subscription to a major IT name's cloud service which I otherwise still love and use.

# My First Git Commit

It was early in 2016, and everyone was hopeful for the future still...

I had previously collected those AppleScripts that I'd written over the years that were worthy/scrubbed of business information for applications such as entering multiple username-pass/computer-address combinations into Microsoft's Remote Desktop and orchestration of mass installations via scripting (FROM A HOST MAC!). And I had gathered a similar collection of bash scripts that deemed worthy of inclusion in their own repo.

April 2016, initial commit with `alldone.sh`, a simple script that outputs hard coded `figlet` text announcing that some script had finished. Immensely useful for appending on a command where you wanted to have a client's machine backing up or transferring data on some highly verbose command, and want to be able to tell out of the corner of your eye when it's finished.

A story I heard once was about how a particular hiring manager somewhere preferred hiring "lazy engineers" over others. "Laziness" inspiring some drive to do things simpler, in fewer steps, more reliability, etc, etc. If you wanted to keep your job, perhaps, you might intentionally or not create some flaw in your methods, and while looking sound and proper were actually more of a pain, and required baby-sitting the task.

So a desire to goof off, I think, is a wonderful trait for me to have, despite all the anguish it can cause when I'm on deadline. Although ironically, I seem to manage well-enough under deadline, perhaps for all the goofing off I've gotten out of the way!

Now, be it known, these scripts were written largely before 2016, at another position at another institution where we were effectively "on-call" during our 8-hour shifts. And this "goofing off" was at least as much bash scripting as it was anything else. (Hope that keeps the boss off me... \*dusts off hands\*)

From here, my first few commits are mostly just pulling in those loose scripts that I found useful, such as my `autobooth.sh` project where I could time lapse myself working and make a little video in the end.

# Profiles

Over the years, I said that I'd accumulated a great and messy batch of mostly aliases, many of which I'd forgotten how to use or rewrote because I'd forgotten about the earlier ones!

I wanted to break these apart into separate pieces and control how they loaded, as well as distinguishing what is publicly sharable and what's private to me (server addresses mostly, not passwords).

I wanted my prompt customizations to live separately from my aliases, exports, plug-ins being sourced. A place for every tool, and every tool in it's place.

Custom `git clone` locations are discovered through a trick found on one of the [Stack Overflow](https://stackoverflow.com) sites:

```sh
PROFILE_DIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )
```

This works similar to Perl's [FindBin](https://perldoc.perl.org/FindBin.html), and can be used as one `source`'s down the rabbit hole.

## Keeping Secrets

Initially I created a "private" folder for organizing my secrets, setting the `.gitignore` and testing to make sure. I quickly discovered I didn't like this practice when I used it for my Sublime Text user folder, which I also shared publicly, as it meant that when I pulled from origin on a new machine, things I'd relied on were quickly lost because obviously, they were never checked into the repo on the machine I wrote them on.

I've tried keeping settings on cloud services and linking or aliasing them into their expected normal location before, and it's just a nightmare of race conditions when the cloud service hasn't fully downloaded a file, has only a portion of a directory's contents at a critical moment, or the application that the settings are for doesn't understand how to deal with another process somewhere else making changes and either not seeing the change until relaunch or just clobbering the changes on exit.

I discovered the best way to arrange this is to keep what LITTLE you need private in cloud storage, and then make everything else publicly visible, in a deliberate update mechanism that the user controls (i.e. git). The public tool then either considers that secret location as just a configuration string and check whether it exists before trying to do work on it.

Acknowledging this per-system configuration detail necessitated an installer script to take the guess work out of what to source, and what options to expose to the user, and to discourage customizing the "usual" `.bashrc` or various profile locations, in favor of organization.

# Features, Features, Features!

With the basics out of the way, I can split up my aliases into files as to keep one's sanity, put conditionals on those such that platform and features don't error or halt unexpectedly, and otherwise make features more feature-ful.

Here are the highlights:

## Quick editing

Developing command line tools would be useful to get at from the command line. Early on, I was avoiding `vi` when I could, and so set my editor to `nano` whenever possible. I had just dropped BBEdit from my life for the loving embrace of Sublime Text 2.

`qbashedit` has mostly been collecting dust, as it was my alias to edit the massive wad of aliases that was my single `.bashrc` file.

`sbashedit` is the modern replacement, opening not only the `.bashrc` file, but the Sublime Text project file that contains the user's home dot-files, the profile sub directory, the bash_hacks project root, and my private configs and other scripts.

`rcreload` simply reloads the `~/.bashrc` file. Run this command before testing anything developed in the organized files loaded by `source`, or instead open a new terminal window in case you don't want to risk trashing at least one session for some recovery.

> A former coworker once told me a story about someone he knew that had a system die in spectacular form from underneath him (perhaps it was a bug, perhaps it was incompetence). But they kept calm, and with experience of such low level details, was able to moderately recover the system by hand-writing the drivers needed to talk to crucial components in the last functioning shell window, and was able to get full & proper replacements from disk or the web.

At least once, I've mistakenly removed the shell binary that I was working with, and most of those occasions been able to put it back or restore a new copy so I wouldn't spook myself later that "I'd been hacked".

> image of missing default shell

## qs aliaser

When working with a dozen, oddly named servers over ssh, all with their own quirks, it might be simple to just have an alias for each one's connection command. This server uses port 23 for ssh, that one such-and-such... There's the something-dash-something versus the something-DOT-something server, one it the successor to the other, but we can't take the old one offline, etc etc.

This takes a config file, and generates bash aliases to operate the `quicksshfs.sh`



# Caveats

I once thought `tput` was a blessing, a way of detecting when and how to style text in the terminal for appropriate terminals. Turns out, nothing is so perfectly engineered on every front, and occasionally I'm used to seeing that I've left some number of `tput`s unguarded in an environment script while trying to debug in Perl or some unrelated scenario. I've since included a universal build mechanism into my Sublime Text files that just dumps the output of `env | sort`.

> image of tput error spam in sublime text

Portability is a goal, but I have not invested time into developing tests, and so I wonder what will break in future or past Mac OSX versions, and especially on various other *Nix's.

Switching all shebangs into the style of `#!/usr/bin/env bash` seems to take a massive load off my mind, especially after the System Integrity Protection of a recent macOS put a big bother into some people over established "safe" paths being open to the user's writing, but Apple wanting that space for themselves. This is also just a handy trick when dealing with interpreted languages in general, since often you might not know the exact location of your final destination's perl or bash binary.


