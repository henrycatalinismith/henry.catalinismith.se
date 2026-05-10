---
title: "The Balkanized Internet: Role of Big Cloud Providers"
tags: [bookmarks]
external_url: http://consulting.m3047.net/dubai-letters/balkanized-internet.html
layout: layout-post
---

> I am disabling AWS access to my on-prem servers (at least mostly). This is partly an experiment and partly an expediency, as I will explain. (As a technical side note, I'm mostly concerned with TCP traffic and it is possible to distinguish which is the client and which is the server from the initial handshake. I'm blocking connection attempts to my services from clients in AWS. Clients on my network can still establish connections to services hosted in AWS.)

What a concept. It's got me rethinking abuse problems I've dealt with over the years and whether just blocking us-east-1 might have been a quicker way to fix them. Would've definitely tidied up the UX analytics for one site I've worked on.
