---
title: How I Use Sublime Text
layout: post

author: justinz
externalLink: false

tag: 
- sublime text

description: "My favorite sublime text settings."
---
<span class="drop-cap">F</span>irst, let's get this out of the way: I think that Sublime is the best text editor for programming and common use purposes, hands down. I use it for everything from my to-do list to building this very website. This isn't a review or a comparison, just a description of how I have my copy configured.

Sublime Text is known largely for it's "customizability" and it's plugin support, both of which are great ways to make editing stuff feel less cumbersome (see: notepad, notepad++, and, (please don't kill me) vim) and more like a natural way to go about programming. My build is focused on web design and jekyll because both are used in the development of this blog, but it can certainly be adapted to any project and you're, of course, free to do your own research concerning useful plugins for your workflow.

Before we get started, you should definitely [install](https://packagecontrol.io/installation) the popular package control utility, which lets you search for and install plugins and themes from within sublime text.


# Theme
Everyone loves themes! This took me a while to figure out, but sublime actually manages themes under two broad categories: "theme" and "color scheme." Simply put, the theme manages all the UI elements, like the sidebar, title bar, and tab bar, while the color scheme refers to the look of the writing area. There is some overlap - theme manages fonts, for example - but that's the general division. You can configure these separately, but both are packaged as themes. This is incredibly useful if you like the general look of one theme but the syntax highlighting of another.

I implement this system using the **[Ayu](https://packagecontrol.io/packages/ayu) and [Lanzhou](https://packagecontrol.io/packages/Theme%20-%20Lanzhou) themes.** Ayu is very popular and has a slick sidebar and tab interface, but it's interface options are just too monochromatic for me - I prefer a dark text editing area and a light UI. For this, I turned to Lanzhou, which has a pleasant dark blue background and distinct but soothing colors - but a terrible UI.

Download both the themes through package control (ctrl-shift-p, type "install", hit enter, type the name of the theme, hit enter). You need to configure sublime to use the theme by going to Preferences\Settings and editing the right box titled "Preferences.sublime-settings - User." I use the following configuration:

```
"color_scheme": "Packages/Theme - Lanzhou/base16-ocean.dark.tmTheme",
"font_size": 11,
"ignored_packages":
[
	"Vintage"
],
"skin": "ayu/ayu light",
"theme": "ayu-light.sublime-theme",
```

This will result in an interface that looks a bit like this: ![Sublime Text Theme Preview](/assets/images/posts/st/theme-preview.png)

Do note that the themes may conflict and other factors may cause some problems with the tab bar text, but this can be fixed simply by adding the following to the settings file:

```
"ui_fix_tab_labels": true,
```

I also enabled the `ui_separator` and `ui_sidebar_highlight_row` options included with ayu:

```
"ui_fix_tab_labels": true,
"ui_separator": true,
"ui_sidebar_highlight_row": true,
```

Snazzy!

# Plugins: Quality of Life
These are the plugins I think everyone should have, no matter what they're doing with ST. They add so many useful tweaks that editing without them feels kinda bizarre.

| Plugin | Description |
| ------------- | ------------- |
| BracketHighlighter | Highlights matching brackets. |
| ColorHighlighter | Highlights hex, rgb, hsl, and other colors inline. |
| SideBarEnhancements | Adds crucial file management features to the sidebar, such as move, new file, etc. |
| Skins | Makes theme switching easier for supported themes. |


# Plugins: Jekyll & HTML Web Development
Here's a list of my favorite plugins for developing websites with jekyll. Some are jekyll-specific, some aren't, but all are well-made and useful.

| Plugin | Description |
| ------------- | ------------- |
| ColorPicker | I use color picker as an extension to the color highlighter plugin above - it simply pops up a color picking window that can be used to insert hex values. |
| GitHub Markdown Snippets | Adds markdown snippets that can be inserted after keywords with tab. |
| Hover Image Preview | Hovering over an image filepath reveals it in a popup. |
| HTML5 | Adds a variety of snippets and tools for editing and debugging HTML5. |
| HTMLBeautify | Simple code formatting utility for HTML |
| Jekyll | Does what it says on the tin. Adds utilities for managing jekyll components and posts. |
| Markdown Preview | In-browser previews of markdown docs. Has the notable drawback that it won't preview images or use your CSS/SASS, but it works well enough. |
| Sass | Adds a variety of sass-based tools to ST. Useful specifically for jekyll. |
| SassBeautify | Similar to HTMLBeautify, but for Sass. |