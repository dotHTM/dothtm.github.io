---
title: Toolbox
layout: miki
permalink: /miki/toolbox/
bullet: ⌨︎
updated: 2019-03-23
nav: 500
desc:
    Tools I like, software I use, things I pay good money for.
---

# Web Tools

## Services

### Feedbin - <https://feedbin.com/>

There once was a social network that had me 100% consumed, and then one day, Google said "Reader is dead, Long live Buzz". Look how well that worked out for them.

Ironically, another "Reeder" recommended Feedbin as a sync service, and after a lot of frustration of app syncing and feature neglect, I've actually decided that 99.999% of the time, I'd rather be on the web interface of Feedbin.

With it, I've categorized all manner of blogs, comics, creators, twitter lists, and newspapers. This is how I keep up to date with websites I care about, it might as well be my "in-box for the web".

Tags, Saved Searches, Notification and "mark as read" Actions, RSS feed of starred items can be chained into IFTTT or recursively fed back into Feedbin...

Great reading experience.

### Pinboard - <https://pinboard.in/>

Once a former employee of Delicious, decided to start a link saving service that duplicated the old Delicious API & spirit. And now after years of his former employer being neglected between owners, he is the owner of that old product.

A really dependable bookmarking service.

## Bookmarklets

### Search this site for ___ - [🦆🔍](javascript:terms=prompt(%22Search%20this%20site%20for:%22,%22%22);open('https://duckduckgo.com/?q=site%3A'+encodeURIComponent(location.host+%22%20%22+terms));)

I love [Duck Duck Go](https://duckduckgo.com). Did you know they provide you with [all sorts of amazing shortcuts](https://duckduckgo.com/bang) to other site search engines too?

I seriously don't recognize Google search results anymore...

### Youtube Page-Embed URL Swap - [📺 YT](javascript:(function()%7Bif(%2Fyoutube%5C.com%5C%2Fwatch%2F.test(location.href))%7Bvar%20a%2Cb%3Dlocation.search.replace(%2F%5B%3F%26%5Dv%3D(%5B%5E%26%5D*)%2F%2Cfunction(s%2Cm)%7Ba%3Dm%3Breturn%20''%3B%7D).substr(1)%3Bif(a)location.href%3D'http%3A%2F%2Fwww.youtube.com%2Fembed%2F'%2Ba%2B'%3F'%2Bb%3B%7Delse%7Bvar%20m%3Dlocation.href.match(%2Fyoutube%5C.com%5C%2Fembed%5C%2F(%5B%5E%3F%5D*)%2F)%3Bif(m)location.href%3D'http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D'%2Bm%5B1%5D%2Blocation.search.replace(%2F%5C%3F%2F%2C'%26')%3B%7D%7D)()%3B)

I forget where I originally found this trick. A handy bookmarklet for getting that full-window effect when you want that specific goal.

Sometimes breaks due to rights claims (anything that can't be embedded) or YT changes something.

### Remove fixed elements - [🔪 Fixed](javascript:(function()%7B(function%20()%20%7Bvar%20i%2C%20elements%20%3D%20document.querySelectorAll('body%20*')%3Bfor%20(i%20%3D%200%3B%20i%20%3C%20elements.length%3B%20i%2B%2B)%20%7Bif%20(getComputedStyle(elements%5Bi%5D).position%20%3D%3D%3D%20'fixed')%20%7Belements%5Bi%5D.parentNode.removeChild(elements%5Bi%5D)%3B%7D%7D%7D)()%7D)())

Very handy to reclaim screen space when browsing some sites or naughty CSS blocks a vital link/content.

As recommended from [Daring Fireball](https://daringfireball.net/linked/2011/03/06/dickbar)'s [gripes](https://duckduckgo.com/?q=site:daringfireball.net%20dickbar).

## Links

### Down For Everyone Or Just Me

<http://downforeveryoneorjustme.com>

Bookmarklet: [Down for everyone?](javascript:window.location='http://downforeveryoneorjustme.com/'+window.location.host)

Quickly check if a site is down or maybe there's a problem with your local config or local network. Easy to get false results, make sure to use the full domain of your site.

### istheinternetdown

<https://istheinternetdown.com>

Grab your IP and make sure that caching isn't tricking you (random color in background every time).

