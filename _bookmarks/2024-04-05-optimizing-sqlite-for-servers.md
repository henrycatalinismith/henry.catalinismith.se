---
title: Optimizing SQLite for servers
tags: [bookmarks, devops]
layout: layout-post
bookmark:
  url: https://kerkour.com/sqlite-for-servers
  title: Optimizing SQLite for servers
  author: Sylvain Kerkour
  description: SQLite is often misconceived as a &#34;toy database&#34;, only good
    for mobile applications and embedded systems because it&#39;s default configuration
    is optimized for embedded use cases, so most people trying it will encounter poor
    performances and the dreaded SQLITE_BUSY error. But what if I told you that by
    tuning a
---

Will always bookmark a SQLite in production post. Learned something I didn't love in this one!

> SQLite doesn't keep statistics about its indexes, unlike PostgreSQL, so COUNT queries are slow, even when using a WHERE clause on an indexed field: SQLite has to scan for all the matching records.

Bloody hell, SQLite.
