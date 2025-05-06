---
layout: post
title:  "Thoughts on AI"
date:   
categories: rants technology
---


- Who is responsible for mistakes?
  - Management
  - The Engineer
  - The LLM
  - The Model's Creator/Distributor
- Workload
  - human dev
    - flow:
      - develop
        - test
      - peer review
      - merge
    - Trust: high
      
      Typical, human works for org, so mistakes or jailbreaks are consequential. You can somewhat trust human coworkers, because they will have to answer for their mistakes.
      - exceptions are
        - public (free) contributions
        - temp workers (contractors, consultants, )
        - anyone who can push responsibility, e.g. management
  - AI assisted
    - flow:
      - prompt
        - analyze
        - manual fixes
        - test
      - peer review
        - analyze
      - merge
    - Trust: low
      
      With the temporal existence of a single LLM instance, and the non-corporeal nature of that "entity", LLMs are intrinsically untrustworthy as they have little to no evolutionary pressure to be reliable. By the time their code runs, they are effectively not alive anymore.
  
      The workflow involves all humans to analyze the results with more scrutiny, because there is the potential for a lack of intention. As with Found Art, the intention is the selection. And I suspect that with a change of focus, people who have aligned their skills to the creativity of abstraction and implementation, changing to a skill set of evaluation and critique is something of a pain point.
      
      Of course, Peer Review is necessary and is part of the human-only flow, but there is some trust in knowing who to turn to when *shit hits the fan* and an expert is needed. Human engineers are limited, and anyone is subject to the boundaries of *being hit by a bus tomorrow*, but LLMs are not being sold as a backup, but as a full replacement for that expertise stack.
      
      - "Artificial Intelligence" should be **at most** allowed read-only access to a project **and treated as a consultant** who makes suggestions to design.
        - Allowing AI to write code is a mistake, no better than a clever batch of nested snippets.
        - Skimming the work of a non-responsible agent can lead to undesired changes.
        - There are many ways to implement requests. Should an AI present several implementations for consideration? That multiplies the effort of the analyze step. A human developer can evolve awareness of

