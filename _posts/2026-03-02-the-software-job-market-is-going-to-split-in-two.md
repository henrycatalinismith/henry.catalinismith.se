---
title: The software job market is going to split in two
image: /2026/03/02/80sguy@259x194.webp
tags: [blog, devtools, zetkin]
layout: layout-post
---

Found myself in Backagården once again this weekend,
[building software for the international left](https://zetkin.org/codecamp/).
This has been a bit of a happy place for me for some time now. This weekend
bought a surprise happiness bonus, when I realised how much fun I was having
coding without access to my employer-provided Opus 4.5 subscription.

A similar experience about a year earlier saw me switching off Copilot's code
completion functionality after
[realising how boring it had made everything feel](/2025/03/14/survival-mode/).
This time felt different somehow. While considering the reason for that
difference, it hit me that the real effect of these new tools on the job market
might be becoming clear now.

The difference between the old autocomplete and this agent workflow with Opus
4.5 is that this new thing actually kind of works. Most of the downsides are the
same – worse, even – especially in the increased estrangement from the work. But
the fact that it's become a viable way to achieve results changes certain
things.

One thing it changes is for all these 80s guys competing to see whose company
can be the most maniacally obsessed with the new golden hammer. I think they're
going to get to see some of their visions fulfilled. And this means that the
software engineers they employ are going to lose their ability to code
independently.

<figure>
 <img
  src="/2026/03/02/80sguy@259x194.webp"
  style="width: 100%"
  alt="80s guy from Futurama"
 />
 <figcaption>
  There are two kinds of people: sheep and sharks. Anyone who is a sheep is fired.
  Sharks are winners, and they don't look back 'cause they don't have necks. Necks are for sheep.
  I am proud to be the shepherd of this herd of sharks.
 </figcaption>
</figure>

That last part there is based on what I've seen happen in my own abilities
during periods when I've leaned more on these frontier models. Switching off
Copilot autocomplete after more than a year of use took me weeks to recover
from. Opus 4.5 had only been in my life a few months when I had my day without
it in Backagården, but I already felt the same nicotine-like craving for it and
the same sensation of rustiness in my thinking while working through problems
independently of the magic answer machine.

I've already experienced the humiliation of bombing a coding interview due to
being surprised by a "no Copilot" rule during my first period of dependency. I'm
confident in saying that these more extreme people who've completely abandoned
coding in favour of prompting models to write code for them aren't going to be
able to pass fizzbuzz independently after a year or two. So I think those
people, and the people who want to hire them, are necessarily going to become a
distinct job market with its own approach to things like recruitment.

In a sense, then, I'm accepting that some reduction in the amount of available
coding jobs is likely to be a reality of this new phase of the job market. I'm
not convinced it's a major percentage, though. Even accounting for the
improvements in Opus 4.5, I still think it feels more like the invention of the
microwave than the invention of the car. Every commercial kitchen _has_ a
microwave, but Wetherspoons is the only place I can think of that's well-known
for microwaving _everything_.

It was a productive day in Backagården, too. First we ripped out isomorphic
rendering in favour of a more isolated REST + SPA architecture. That took three
pull requests ([1](https://github.com/zetkin/lyra/pull/238),
[2](https://github.com/zetkin/lyra/pull/242),
[3](https://github.com/zetkin/lyra/pull/243)). Then came a
[search feature to find translation strings](https://github.com/zetkin/lyra/pull/244).
I put a lot of love into handling the various state transitions right and
highlighting matching text, and felt proud of the result in a way that I hadn't
been feeling after prompting my way through problems. I know which end of the
job market I want to be in.
