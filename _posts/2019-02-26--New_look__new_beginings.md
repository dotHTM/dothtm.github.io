---
title: "New look, new beginings"
subtitle: "a reason for me to write again"

draftdate: "2019-02-26"

categories: blog
layout: post
---

I finally jotted down the "high" priority of my personal projects, and first and foremost was making this place look like something work writing to.

## Roadmap

### Blog

Progress on projects, personal updates, news, things highly associated with time and place. When Twitter won't suffice.

### Miki

Articles that are more general, topics but not "topical". A "Wiki" for just me to write.

I used to run a Media Wiki isntance on my home server, until one day a spammer found it. I realized in hindsight that I should have anticipated account creation beyond my own, and I wasn't prepared for someone using my server for their purposes.

So "clever" software be damned, and it's better to have "dumb" static pages build by a standard pipeline (this Jekyll service) and authentication and permission managed by an explict and tested service (github) for users explicitly declared and vetted (just me).

### Games

#### Dragon Fractal Tutor

My first passion software project. I wrote the first logic durring my investigation of the dragon fractal in the late 90's in high school in Borland C.

20 years later I got a developer job and learned the basics of object oriented design, wrote some ugly code, wrote some less ugly code, rinse-repeat, and eventually recreated the "same" DOS C program but now OO in Lua under Pico-8 that can run on a friend's refridgerator.

<!-- Link to twitter -->

So what could this become?

Instead of just a bare-bones drawing/animation of this one fractal, I'd like to make an interactive tutor to the ideas of paper tape fractals, and give jumping on points for both laypersons and intermediate students.

That means I want to make this with art, character animation, dialog trees, changing views, and an interpreted language for paper tape fractals.

Sounds like a nice way to learn a lot of lessons about game development [without having to write "Snake"](eniko_interview).

#### Perl Libraries

##### Idols

"**I** **Do**n't **L**ike **S**QL" (name to change in future)

A DBI wrapper for cross host/server, cross database, relational MySQL/MariaDB data with data caching and pre-emptive table query rules.

Why not just use an existing library like NoSQL? I paid employement is in Perl, and I deal with a lot of cross-server situations where relational structure may not be configured.

Progress

- Basics: connecting through making individual raw SQL querys
- an alternative to native hash-arrays that provides indexing on given column names (for table storage/retrieval)

Future

- input data sanitization
    - distinction between values passed as raw or need to be internally wrapped
- query statements assembled automatically
    - where clause assembly
        - Boolean conjunction
    - cache query with same functions
- decide how the relational model is built (probably importing from JSON)
- decide how retrieval of records will work (shortest linkage vs specified path)


##### Idola

**I**dealized **D**ata **O**bject(?) **L**(???) **A**PI (will definately change)

An http REST API wrapper for helping build service API libraries. 
