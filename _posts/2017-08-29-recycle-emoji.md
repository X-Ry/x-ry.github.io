---
published: true
title: 'How the "RECYCLING SYMBOL" got to the top of the emoji leaderboards.'
date: '2017-08-31 11:00am'
image: /assets/images/posts/recycle/recy-header.jpg
description: The wacky story behind the recycling emoji's popularity.
author: justinz	
headerImage: true
layout: post

tag:
  - recycling
  - emoji
  - explore
---
<span class="drop-cap">D</span>uring one of my frequent deep dives into weird Internet webapps and utilities, I came across [this nifty website](http://emojitracker.com/) that tracks emoji uses on twitter. It's called emojitracker, and it scans every single publically accessible tweet for emojis, and tracks their use. Visiting the site on desktop gets you this rather overwhelming view of all of the emoji counts, updating in realtime:

![emojitracker's rather overwhelming interface.]({{site.baseurl}}/assets/images/posts/recycle/emoji.PNG)

"FACES WITH TEARS OF JOY" (or :joy:) is a pretty much unequivocated winner, with "HEAVY BLACK HEART" (:heart:) taking second place. The first 6 are all pretty much what one would expect -- :joy:, :heart:, :heart_eyes:, all keep their places at 1, 2, and 3, and then :hearts:, :sob:, and :blush: change places intermittently. Then, lo and behold, the :recycle: symbol appears. While I'd love to believe that twitter just really, really, really likes recycling, there's definitely another explanation.

Luckily, emojitracker actually displays the tweets as they come in, and the defining characteristic of tweets with :recycling: is that the symbol almost always appears in Arabic tweets, before a link. [A quick search on twitter.com](https://twitter.com/search?f=tweets&q=%22%E2%99%BB%EF%B8%8F%22&src=typd) for "♻" in latest tweets gets us what we're looking for: a whole bunch of tweets ending in recycling and a link to the website "du3a.org."

## The website

Du3a.org is a barebones frontend that appears to invite users to authorize their account with twitter. Above the authorize button is a line of text that says that the du3a app is used to post "adverts" (likely a bad translation of messages) to your twitter account. We still don't know what the purpose of this is, but we now know that it's a twitter app that publishes things to people's accounts and appends the "♻ du3a.org" message on the end. 

There's a "Terms of Use" disclaimer when you click the button to authorize, disclaiming, essentially, that they publish an "ad" per day, and a tweet per hour. That would explain the high volume - a tweet per hour for every connected account. We'll get to rate of tweets later, but that's a big number if you assume that roughly the same number of people use the app as those who follow the app's profile on twitter. There's a follow button on the Terms popup, and they have 145K followers - 145K tweets an hour means 3480000 tweets a day, quickly adding up to the total emoji count. 

A click on the "subscribe" button on the auth popup redirects you to the twitter authorization page, which notes the publisher of the app as "zad-muslim.com." 

![]({{site.baseurl}}/assets/images/posts/recycle/auth-page.PNG)

The app asks for wide-ranging permissions, including the permissions to post tweets, change your profile, DM people, and follow people. That's a red flag right there -- a publishing service shouldn't need anything but the ability to tweet for you.

A look at the zad-muslim.com site brings a bit of clarity to the issue. It's another splash page for a twitter application, but this time it states (again, badly translated), "Is a free application through Twitter through which you can send Quranic tweets to your account." Fair enough, perhaps a bit odd, but nothing too surprising. The tweets I did translate from the original search seemed to allude a lot to the game Quake, but I suspect that was just a fragment of translation. 

Moral of the story: We can actually thank enthusiastic religious content on twitter for popularizing recycling ♻.

