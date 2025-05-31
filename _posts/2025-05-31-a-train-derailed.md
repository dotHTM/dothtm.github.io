---
title: "A Train Derailed"
date:   2025-05-31T05:49:00-5:00
layout: post
categories: ramble
---

I'm sitting here shortly after noon, on my couch, watching a YouTube. I'm having thoughts on an essay, and feeling inspired to write.

> My goal is this: brainstorm my thoughts for my blog.

My blog is written in text files inside a `git` repo, and published on GitHub using the Jekyll integration in their Pages `.io` domain.

On my iPad, I pull from the remote and see that I'm missing a draft. No worries, because I'm not wanting to work on that piece, but still, I feel like I could be better after I collect it in and don't lose it.

So I `ssh` in and cd to the directory, see the missing draft file, stage and commit it. But then `git push` just seems to hang. A minute later, I realize that my laptop upstairs is likely halted on the 1password biometric prompt for my secured ssh key. Well, shoot. I don't want to walk upstairs to auth TouchID.

Let's see if I can use that fancy 1password-cli package I installed but haven't learned a lot about. Okay, back to the command line, I type `op -h` and then it seems like my `ssh` has crashed? Open a new tab and reconnect, same here. Again, but just type a bunch of random... looks fine, why does `op` lock it up? Let's see what's on the GUI... Oh, macOS Security has flagged it as a new app, and I guess `fish` trys to run something (like the completions helper) after a moment.

I confirm the new app prompt. Okay, `op help`, `op signin`, feels halted. Ugh, the GUI has popped a TouchID again.

I ask GPT for help, and 4o immediatly halucinates a solution. Downvote the response and switch over to the o3 model. It does better, and I learn about `set -x OP_BIOMETRIC_UNLOCK_ENABLED false`. I write a little fish functions to avoid having to remember all this, and I've got `ssh-add -l` showing my keys in 1password. But of course, the ssh-agent config goes to the GUI client, and it's insistance at biometics.

GPT o3 halucinates the command `op account unlock` and I downvote again. I manually search the docs, I'm not finding it. I come back and just reload o3's attempt. It accepts the limitation and reiterates being _at the affected computer_. Ugh... Okay, ask if the `op` cli can function as an SSH-Agent itself, and it headlines the response with "Reality check" and says basically, no.

GOOD!

Okay, Ask GPT if I can feed an SSH key directly to `git` without writing to disk.

---

Then some time later, I have most of my cases handled for enabling and disabling the GUI ssh key agent (via config files) and locking up when I'm done.

I work in `fish` shell, so the key element was figuring out not to use `ssh-agent -s` as the LLM was infering from guides, but to use `ssh-agent -c | source` instead.

View the final result of my distraction here: [1password.fish](https://github.com/dotHTM/fish_hacks/blob/master/modules/1password.fish).

> Okay, what was I doing? Oh, it's almost 6pm.
