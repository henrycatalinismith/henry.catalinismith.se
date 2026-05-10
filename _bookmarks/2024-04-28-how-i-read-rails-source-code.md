---
title: How I Read Rails Source Code
tags: [bookmarks]
layout: layout-post
bookmark:
  url: https://www.writesoftwarewell.com/how-to-read-rails-codebase/
  title: How I Read Rails Source Code
  description: This post shows two techniques for reading the Rails codebase. First,
    we'll learn how to open the gem with bundler and then we'll run tests and insert
    breakpoints to step through the codebase.
---

Worth bookmarking just for the `bundle open gem` tip. But also full of other little bits of wisdom.

> The obvious benefit of a test is to make sure that the code still works after making a change. However, another hidden benefit is that a test can help us get familiar with the codebase quickly. You can execute the code without launching the application in the browser or running the complete program. 

This is an underrated upside of having lots of unit tests and it's an onboarding hack I use a lot myself for learning new codebases quickly.
