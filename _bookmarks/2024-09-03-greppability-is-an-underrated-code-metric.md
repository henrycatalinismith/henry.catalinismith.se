---
title: Greppability is an underrated code metric
tags: [bookmarks]
layout: layout-post
bookmark:
  url: https://morizbuesing.com/blog/greppability-code-metric/
  title: Greppability is an underrated code metric
  lang: en
  description: Keeping your codebase searchable will make your maintenance life easier
    in the long run. A collection of guidelines to keep your code base greppable
---

This article focuses on back end development but the same principle also applies to front end. It's why I recommend avoiding [Sass's parent selector](https://sass-lang.com/documentation/style-rules/parent-selector/) in many cases.

It's really common to see Sass written like this.

<pre><code>.Card {
  display: flex;

  &__heading {
    font-family: bold;
  }
}</code></pre>

That parent selector saves one engineer one or two seconds of typing work. The trade-off is that it makes `Card__heading` impossible to find via code search. So I think the above is better written like this.

<pre><code>.Card {
  display: flex;
}

.Card__heading {
  font-family: bold;
}</code></pre>

The initial work of typing in the code takes a moment or two longer. In exchange for that, anyone who works on the application in future can copypaste any element class like `Card__heading` into a code search tool and immediately find its CSS source code.
