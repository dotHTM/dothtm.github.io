---
layout: post
title:  "Mobile IDE"
date:   2016-07-07T11:00:03-05:00
categories: blog
---

Is it possible to code effectively on an iOS platform, specifically an iPad Pro w/ Keyboard case?

## Git(hub) Clients

I will only consider options that support file storage extensions in code editing apps. This ensures that the git app does all the heavy lifting and focus on commits and 

### Git2Go

Free, works, little clunky, Nice dark theme.

### Working Copy

Free to demo, IAP for Push. White theme.

Nice Diff tools, image diff reminds me of Mac Kaledescope.

## General Purpose Editors

### Sublime Text

... does not exist (yet) on iOS, and so we must venture out and look at what options exist elsewhere.

### Texastic 6

Universal iOS app and a Mac app to match. For a complete package cost of 18$US, a nice entry point into code editing at a desk and while mobile.

Version 5 didn't support the idea of snippets built in, and there doesn't seem to be a programing interface to build plugins, at least not advertised on the product page, so it falls short of the ST holy grail.

Works well with file storage extension apps.

### Coda

Perhaps the most full featured app. Supporting multiple connection protocols, mimicking and syncing much functionality with it's Mac version. Primarally a web focused tool, but has built in support for several scripting language highlighting such as bash.

Support for file storage extension apps is needing attention. Coda shares storage space with Transmit, and if you have both installed, Transmit will appear as a file storage extension in other apps. The trouble is, that the editor in Coda is top notch, but if it insists that it be the cannonical file storage, this quickly leads to duplicates and "version hell" since edits in Coda taken from one file storage extension are not reflected back in it's original location until that file is saved back out to. This ensures that any file you get not-from-Coda-but-edit-in-Coda has at least two copes on your device at anytime. Which one is the most up to date is a mystery, as Coda has no diff tools. (Insert argument about why a code editor shouldn't try to worry about the whole IDE stack.)

## Dedicated Languages

### Pythonista

<http://omz-software.com/pythonista/>

Languages:

- Python
- Markdown

User developed shell to add built-in `git` and `pip` support <https://github.com/ywangd/stash>


### Codea

<http://twolivesleft.com/Codea/>

Languages:

- Lua

"Aircode" feature lets you code in a web browser on one device and see execution on the originating device.

### Continuous

<http://continuous.codes>

Languges:

- C#
- F# 

### Calca

<http://calca.io>

Languages:

- a custom Markdown for math expressions

Mac and Windows versions too.
