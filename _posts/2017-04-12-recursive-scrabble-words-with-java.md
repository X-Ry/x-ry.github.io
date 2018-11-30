---
title: Recursive Scrabble Words With Java
layout: post
date: 2017-04-12 2:10am
headerImage: false
tag:
  - project
  - java
  - riddler

star: false
author: justinz
projects: true
description: Recursive Scrabble Words With Java for a Riddler Puzzle
published: true
---
<span class="drop-cap">B</span>ack in October of 2016, [FiveThirtyEight](https://fivethirtyeight.com/) published [this](https://fivethirtyeight.com/features/this-challenge-will-boggle-your-mind/) Riddler puzzle set. These weekly challenges include a wide variety of puzzles and stats problems, but this one caught my eye - it asks, essentially, what the longest Scrabble word is that has other valid scrabble words _nested inside it-_ i.e. the longest word you can form by forming other shorter words first and adding a tile every turn. I figured that there had to be an algorithmic solution to this problem, and, sure enough, there (sorta) is.

![ARE YOU READDDDYYYYYY](https://justinwzig.github.io/assets/images/posts/scrabble/scrab-image.jpg)

## The problem:

Just so we're clear on the challenge, here's a table demonstrating how the words should be constructed:

| Word    |   Length |
| ------- | ------ |
| IMAGERY | 7      |
| IMAGER  | 6      |
| IMAGE   | 5      |
| IMAG    | 4      |
| IMA     | 3      |
| IM      | 2      |
| I       | 1      |

All of the words above (`IMAGERY, IMAGER, IMAGE, IMAG, IMA, IM, I`) are valid scrabble words, and the final word has a length of 7 - meaning that there are 7 'nested' words inside of it.

The object is to find the word with the most words inside of it, and, therefore, to find the word with the longest length that can be built one character at a time.

## Code Synopsis

This struck me as something that could definitely be done programmatically and as something that would be good practice for string manipulation in java, so my friend Matthew and I decided to take it on and submit our solution. For the sake of brevity (and not offending anyone with our disgusting code) I'm only going to go over a few snippets here. You can view the entire code and download the project [on GitHub.](https://github.com/justinwzig/RecursiveScrabble)

### In short:

The program reads a dictionary, picks a letter to add to the starting letter, checks that word against the dictionary, and continues to add letters if the first word matches a word in the dictionary. This is repeated for what is theoretically every word, except that it terminates the working word once a single comparison fails. For example:

If we start with `ZA`, the program would find that in the dictonary, continuing to the next step. It would then try every next possible letter, so `ZAA`, `ZAB`, `ZAC`, all the way down to `ZAZ`, and, when none of those turn out to be words, it would "terminate" at `ZA` and move on to `ZB`, and if that isn't a word, it would move directly to `ZC`. This is because, like I mentioned earlier, every "nested" word must be a valid word.

But there's a catch. Letters can be added to either side of the "working" word. This means that every word must be tested *twice* - in the above example, `AZA` would be tested in addition to `ZAA` because it added `A` to both sides of `ZA`. This simply means that it takes twice as many operations to complete the checks, but it poses a special programmatic challenge because both must be tracked.

Once it finds the terminus of a word, it compares that word to a list of already "found" words, and, should the current word be longer than any of the others in that list, adds it to the list and clears the other entries (there's some special cases here but at the end of the day, it's just keeping track of the longest words) before moving on to the next word.

This whole process is so inefficient (more on why that is later) that it can only be run on one starting letter at a time, and sometimes that's not even enough. There's so many possible words that include the root letter `A` that the program produced overflow errors when we attempted to run it on `A`. This doesn't mean that we simply ignored all the words including `A` -- the vast majority of them were probably covered by other root letters because it tests adding A to the rest of the letters.

### In long:

The first problem was finding a way to validate words. We didn't want to futz with a crawler and the aforementioned dictionary website, so we used [this](https://raw.githubusercontent.com/jonbcard/scrabble-bot/master/src/dictionary.txt) text-only scrabble dictionary from github user jonbcard's scrabble robot (also a very cool project). We simply scanned the words into a massive list with which we would compare the words we built later. The setup method responsible for loading the dictionary file also includes the creation of a list filled with entries for the 26 characters in the alphabet - a poor man's way of using ints as letters and later using the list to convert.

Next comes a simple helper method aptly titled `isAWord`. This simply takes a String and goes through each. and. every. line. of the dictionary linked above and tries to find that String in the dictionary. If it can't, then the working word must not actually be a word. Looking back on this, we should have entirely changed how it searched for word matches but our naive sophomore brains could not yet comprehend the world of sort/search algorithms, so this tiny method ends up accounting for 99% of the runtime in this project. Alas. Maybe someday I'll rebuild this :).

Anyways, that brings us to the thick of it: the methods to build, test, and compare words. This is broken down into four parts: `work`, `check1`, `check2`, and `redo`.

### `work`
Work is simply a method that is responsible for initiating checks and restarting the entire process with new letters. Essentially, it makes a decision about what check to run -- either the "add letter after" or "add letter before" checks -- based on what letter was previously added to the working word, and whether or not that check was successful. After it's run out of letters, it starts the redo() method which processes the result and eventually restarts work() all over again.

I'll leave it to you to figure out what the heck all of our variables mean (hint: `working` is the word that is currently being manipulated), but here's the method: 

```
    public static void work() {
        for (; counter < alphabet.size();) {
            boolean result = false;
            if (!skip1) {
                working += alphabet.get(counter);
                result = check1();
            }
            if (!result || override) {
                working = alphabet.get(counter) + working;
                check2();
            }
        }
        redo();
    }
``` 

### `check1`

`Check1` is responsible for checking words that have had a letter added to the _end_ of the current word. `Check1` starts with a test of whether or not the current word is a word using the `isAWord` method as described above. If the test fails, it simply chops off the letter that was last added to `working` and returns false to `work()`. However, if the test succeeds, `check1` is responsible for documenting that word in the aforementioned list of longest words. This is all petty simple and I'll let you figure it out for yourself below. Otherwise, it also adds the `working` word _minus the most recently added letter_ to a list of words to be checked later. This becomes important in redo().

Here's the full method:

```
    public static boolean check1() {
        System.out.println("checking " + working);
        if (!isAWord(working)) {
            System.out.println(working + " is not a word");
            working = working.substring(0, working.length() - 1);
            return false;
        } else {
            System.out.println("WORD!!!!!!!!!" + working); //We got VERY excited when this found a valid word.
            int currentLen = working.length();
            if (currentLen > record) {
                longest = working;
                record = currentLen;
            } else if (currentLen == record) {
                longest += (" " + working);
            }
            latercheck.add(working.substring(0, working.length() - 1));
            countValue.add(counter);
            isStart.add(true);
            counter = 0;
            return true;
        }
    }
```

### `check2`
That brings us to `check2()`. This method is responsible for pretty much the exact same thing that `Check1` is, except that it deals with words that have just had a letter added to the front. In fact, it's identical except for a couple of lines:

```
    public static void check2() {
        override = false;
        skip1 = false;
        System.out.println("checking " + working);
        if (!isAWord(working)) {
            System.out.println(working + " is not a word");
            working = working.substring(1, working.length());
            counter++;
        } else {
                                                        //Huh, for some reason we decided to leave out the iconic WORD!!!!!! from this one.
            int currentLen = working.length();
            if (currentLen > record) {
                longest = working;
                record = currentLen;
            } else if (currentLen == record) {
                longest += (" " + working);
            }
            latercheck.add(working.substring(1, working.length()));
            countValue.add(counter + 1);
            isStart.add(false);
            counter = 0;
        }
    }
 ```

As you can see, it simply has a couple of extra lines dealing with overrides for special case words.

### `redo`
...deals with cleanup. After `work` has completed, it's responsible for dealing with the `latercheck` list that was built in the `check` methods above. Essentially, it checks all of these "extra" words with some overrides using work() just to make sure that we didn't miss any words. 

```
    public static void redo() {
        if (latercheck.size() != 0) {
            int l = latercheck.size() - 1;
            boolean temp = isStart.get(l);
            isStart.remove(l);
            if (temp) {
                working = latercheck.get(l);
                counter = countValue.get(l);
                System.out.println("Ended, moving to start, setting redo to " + working);
                latercheck.remove(l);
                countValue.remove(l);
                skip1 = true;
                override = true;
                work();
            } else {
                working = latercheck.get(l);
                counter = countValue.get(l);
                System.out.println("Started, doing next letter, setting redo to " + working);
                latercheck.remove(l);
                countValue.remove(l);
                work();
            }
        }
    }
```

## Phew.
That's it. There's a bunch of little nuances with this problem that make it a bit of a bugger to do with java but in the end it's just a lot of very fragile loops and if statements. Looking back at how long this post got, I'm realizing that it probably didn't warrant this long an explanation but I tend to ramble when it approached 2:30am. We learned a lot from this weekend-long project and I think that looking back on it now has taught me even more. Anyways, if you've made it this far, thanks for checking it out - consider sharing using one of the buttons below. Thanks again!!
