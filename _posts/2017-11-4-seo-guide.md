---
hidden: false
title: "The (not at all) Complete Guide to SEO for Personal Websites"
date: '2017-10-31 2:30	pm'
description: 'Optimizing search ranking and analytics for small websites.'
author: justinz	
headerImage: true
image: https://justinwzig.github.io/assets/images/posts/seo/header.jpeg
layout: post

tag:
  - SEO
  - Analytics
  
published: true
comments: true
---

<span class="drop-cap">SEO</span> is the art (sloppily-defined magic) of making your website (crappy portfolio page) appear higher in organic (non-paid) search (Google) rankings: basically, manipulating Internet search algorithms. If you have ever developed a website, you've probably run into it, be that in ads for SEO services in sitebuilders, or in one of the millions of articles about how best to optimize your site for different audiences. Heck, people use SEO on their pages *about* SEO -- even my website, the one hosting this article, uses some SEO techniques.

It's easy to get sucked in: optimization and web marketing can become an endless obsession because the available techniques and services are so wide-ranging, and because there's no set standard for how to promote your website. At the end of the day, unless you're running a corporate marketing machine or making a significant amount of money off your sites, very little of this matters. This site, for example, uses just a few really simple steps to get it indexed by search engines, and it shows up in spot #2 when you Google my name -- exactly where I want it. I figured I would put together a little guide on how to get your site out there, without having to pay for expensive SEO services or having to publish tons of content.

## First things first: some background

Google and other search providers use what are called crawlers (I like to think of them as virtual spiders) to inspect your site and decide where it falls in search results -- you, the developer, want to make sure that these spiders are happy with what they find on your site, and to make it easy for them to get to that *stuff.* The trouble, of course, is that we don't know for sure what actually makes them happy, because the algorithms that power them are extremely complex, closely guarded, and always changing.

There's no right answer here. Like I said, SEO is a sloppily-defined magic, at best, so whatever ends up working for your site, just stick to it. Some people will tell you to write tons of keyword articles (I won't do this), and some will tell you it's all in the meta tags. This is my collection of tips regarding the matter, and is definitely not the ultimate guide to SEO. 

**Ok, on with it:**

## 1. Get your own domain (and hosting!)
Hosting a blog somewhere like `myblog.wordpress.com` is just about the single worst thing that you can do if you want to show up online. There are thousands of crappy, contentless sites on those domains (because they're free), and search providers know this, and avoid indexing them at all costs. Even hosting this site at .github.io (the Github Pages platform) sets me back rather far, but because this platform isn't a sitebuilder, it's not *quite* as bad as it could be.

Fast hosting is also key. Search crawlers care a lot about user experience, and if your site is slow to load, that reflects poorly on you. Google has published a handy tool called [PageSpeed Insights](https://developers.google.com/speed/pagespeed/insights/?url=justinwzig.github.io) that will analyze your page, give it a score (the same score used by search crawlers), and will even tell you what you can do better on your site. Aim for something above a 70/100, and don't worry if you can't get it perfect. The checklist they provide isn't so much a "definitely do all of these things" list as a "make improvements here and your score will increase."

## 2. Focus on UX
This goes hand-in-hand with fast hosting, but the UX of your website is also important. Clean code that doesn't have copious amounts of errors and old web tech will make your site friendlier to bots and users. Same thing with design -- mobile responsiveness and clarity of information are actually evaluated, and are becoming increasingly important. Sites that lack mobile responsiveness take a huge hit to ratings.

## 3. Permalinks
It's important to have effective, succinct permalinks to articles and content -- they're how engines and people locate *stuff* on your site.

There's two elements of a permalink:
Root (domain): justinwzig.github.io/
Extension: /seo-guide.html

I find that the simplest structure is always the winner. Don't bother doing something with dates or the like -- the title of the article will do just fine in almost every case.

## 4. Backlinks
Unlike their perma- prefixed cousin, Backlinks are links *to* your site from other sources. When a popular blog links to one of your articles, that traffic is tracked and can massivly help your search ranking. That said, never EVER ever buy backlinks. Google knows about bogus backlinking schemes and, besides, it's not really that hard to build backlinks naturally: get your content out there (see point 6) and the promotion will follow. 

Do note that text in a backlink matters: If I say "this post" and link to something, it has a different effect than "this analysis of web technology" -- the latter associates your content with anchor text as a keyword, and search engines love this because a backlink is someone else's judgment of your content, and, therefore, the utility of your content.  

## 5. Search Console & Webmaster Tools

Google and Bing (yes, Bing) are the two search providers you really need to care about: they're the most popular (Bing is connected to Yahoo! now, so optimizing for Bing also optimizes for Yahoo), and the most opinionated. Search providers like DuckDuckGo rock, but they don't let developers manage their sites because they are predicated on a no-tracking ethic, so there's not much we can do there.

### Google's Search Console
Google's search management portal is called "Search Console" -- head over to https://www.Google.com/webmasters/tools and hit "Add Property" at the top right. It will guide you through setting up and verifying your site. This usually involves adding a meta tag to the header of the homepage, but there's also a few other techniques. 

The first thing that you should do once your site is verified is to start a site crawl, and ensure that you have a Sitemap set up. This page will tell Google about all the subpages of your site and will allow it to index those, too -- many web builders provide plugins ([I use jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)), and it's not too hard to create a generator ground up. Once the crawl completes, search console will tell you if there's any crawl errors on your site -- missing pages or broken references:

![seo-screenshot-1](/assets/images/posts/seo/SC-1.PNG)
 	
Check this list to make sure that you don't care about Google indexing the pages that are listed -- my site, for example, has a few missing references, but it's alright to ignore them because the pages have been removed. Having missing pages **doesn't** hurt your search ranking, those pages just won't be displayed on Google.

Next, you can check the Search Appearance tab, which has a variety of features that you can add to your site to change how you show up on Google. Rich cards, structured data, and AMP are all tools that you can use to improve your UX and target users more effectively on Google. Each tab has instructions on how to implement them in your site.

![seo-screenshot-2](/assets/images/posts/seo/SC-2.PNG)

Once you have the sitemap configured, you should see a noticeable improvement in your search ranking for keywords directly related to your website. You can view search appearance analytics by going to the **Search Traffic** tab: 

![seo-screenshot-3](/assets/images/posts/seo/SC-3.PNG)

It's also important to note that **you have to add every variation of your URL to search console!** This means that if your site supports https://, add both the http:// and https:// properties to search console. You can create a "Property Set" from the dashboard to group properties like this together.

### Bing Webmaster Tools
Bing's [Webmaster Tools](https://www.bing.com/webmaster/home/mysites) platform is more closely integrated with their advertising platform than Google's, and offers you a bit more flexibility because of that. The idea here, though, is the same: get Bing to index your site and all its subpages. 

The process for adding a site is similar to that of Google's, enter the URL and then add a meta tag to your header. The same rule about different domains applies here -- register all variants of your web address. Once all of that is configured, set up a crawl and check for errors -- once that's done, go through the various settings in "Configure My Site" and, well, configure your site! 

Now on to the hard stuff:

## 6. Create good content that's useful to people!
Ultimately, where you turn up on a search is dependent upon what people are searching! Create things, pictures, articles, videos, whatever it may be, that people are interested in. It sounds obvious, but that's the single most important thing for being found online, and it can often get lost when people focus so much on the minutiae of web development *for* search engines.