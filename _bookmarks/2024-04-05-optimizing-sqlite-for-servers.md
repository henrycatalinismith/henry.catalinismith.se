---
title: Optimizing SQLite for servers
tags: [bookmarks]
external_url: https://kerkour.com/sqlite-for-servers
---

Will always bookmark a SQLite in production post. Learned something I didn't love in this one!

> SQLite doesn't keep statistics about its indexes, unlike PostgreSQL, so COUNT queries are slow, even when using a WHERE clause on an indexed field: SQLite has to scan for all the matching records.

Bloody hell, SQLite.
