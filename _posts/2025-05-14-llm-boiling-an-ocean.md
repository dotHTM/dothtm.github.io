---
layout: post
title:  LLM: Boiling An Ocean
date:   2025-05-14 05:49:00 -0500
categories: blog
---

# problem

I asked an LLM to calculate how many days I’d lived under Daylight Savings Time.

Considerations for this problem are that the US has had several changes to DST timing, and depending on my birthdate, that might not be so easy to just get the number of DST days in a typical year and then extrapolate out across the years. Sure an Estimate, but not the exact number.

Furthermore, location is key to this calculation (as is so many time based questions) and so I added a wrinkle to the original promt and gave three periods where I was in Arizona during my life.

Again still, The Navajo Nation and Hopi Reservation have different policies from eachother, and I suggested that for two of those periods I was in one and the other.

Even further still, I suggested that I had also traveled to Tasmania, Australia for a number of periods.

Then I said I’d made a mistake in my birth date, and that I’d been born some 35 years earlier, which should have added another region of time into the consideration.

# rseults

Both the “4o” model and the “Pro reasoning” model returned values.

The “4o” model wrote python code, and I was able to spot check some issues and make suggestions about historical assumptions and inaccuracies as it occurred. However, guiding the LLM to correct these mistakes was a load of energy, and was the specific thing I was testing against. Had I not known the specifics of my problem, or if I had not been keen to see _how_ the problem was solved, the result would have been in error.

The “Pro reasoning” model wrote a report with results, somewhat academic in nature, and was less easy to check, although it did observe some “gotcha’s” without me having to proof as closely. Since this version would require me to reason along with the report output, I did not immediately check it. I fear that this would actually lead to this model being trusted more because it’s output _looks_ more professional.


# caveat

Both models only considered the problem as stated, and as it evolved. The “Pro reasoning” model took longer to return results, however it appeared to need less shepherding than its “4o” sibling.

However neither model tried to generalize the problem as I started making corrections to my prescribed circumstance.

Rarely is a solution to a problem about an individual worth consideration only for that individual. While both models made considerations about locale policies, even the version that wrote python code built anything that could be used to generate the answer for another individual with salient details.

Again, both were only interested with delivering a result to the exact problem stated, and did not make the leap to generalize the problem as early as possible to minimize the work later.

Granted, this may be a problem with how LLMs are trained, as people rarely speak about questions and answers without some specific context in which they can be considered.

# Conclusion

Where I to restate the problem as create a tool that can do the following, and then list the evolution of the problem, return the value, perhaps I would have gotten the answer I ultimately wished it had.

It’s funny to me that such predictive systems could be built to be “so functional”. But I think part of this may be the _spooky_ quality that they appear to be able to write functional code and then execute it. The LLM appears to facilitate “creativity” and sub-specification, where the python interpreter provides “pure logic” and avoids hallucinations where an LLM alone cannot do simple arithmetic.

I fear the most difficult problem LLMs have to offer humanity is the worst part of Academia: Grading. As it stands today, I have almost no energy to read anything that I even lightly suspect is LLM generated, even the responses I asked for myself.