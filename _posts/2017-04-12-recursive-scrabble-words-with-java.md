---
title: 6 Years of First Robotics
layout: post
date: 2018-12-22
headerImage: false
tag:
  - project
  - FLL
  - FTC
  - Robotics

star: false
author: RyanNewkirk
projects: true
description:  6 Years of First Robotics
published: true
---
<span class="drop-cap">I</span>t's all started 6 years. I moved to Lincoln Park.  This essay I wrote in AP English class shared a best lesson I've learned in First Robotics team.  

![ARE YOU READDDDYYYYYY](https://github.com/X-Ry/x-ry.github.io/tree/master/assets/images/posts/DSC_0117.JPG)

## The Human Pyrimid:

     “Ryan, quick! Come on up!” Grant shouted at me, climbing on top of Peter. Our coaches, Mr. Goodall and Mr. Whitefield, had crouched down on each side, pushing up with their strong arms, building a perfect foundation. We had just won our First Lego League robotics regional competition. The winning teams were supposed to take a group photo in front of the FLL sign, and right on the spot, they decided to build a human pyramid. I was hesitant, freezing for a second. 
“What’s wrong? Ryan, quick, we can’t hold it much longer.”
“Ryan, come on up!”
I was excited for the team, and I knew I should’ve hopped on, but I couldn’t move; my feet were glued to the ground.
“It’s ok; it’s ok, don’t worry about it. Let’s just take the picture.”
Snap! The cameraman took our picture, me standing next to the human pyramid with a polite smile on my face. This was my first robotics competition. We won and were advancing to the state competition. Sure, I was happy, but still, climbing on top of Grant and his sister Grace’s back seemed like a daunting task. I was a little afraid that I would break their backs (or that I’d break mine), but I knew there was something else holding me back.
6 months prior, we had moved from the suburbs to Chicago. My dad had lost his battle to lung cancer. At the same time, Motorola, the company my mom worked at, was bought by Google and decided to move their headquarters to Downtown Chicago. We had to move.
I didn’t want to move away from my neighborhood at all. I never wanted to leave my friends! I had no interest in moving to Chicago. But I knew there was no room for fussing. Albert Einstein said, “Life is like riding a bicycle. To keep your balance you must keep moving.” I hoped he was right.
I met Grant at Oz Park during my new school welcome party. He lived next to the park, and his home was 2 minutes away from the school. His two younger brothers were swirling around him while we were talking.
“I know everything about Lincoln. If you need any help, just let me know. Ignore my brothers; they’re crazy; they follow me wherever I go. Oh, my mom is our school’s parent counselor, she knows a lot about our school as well. My Dad works at Motorola…”
“Really?! My mom works at Motorola; that’s why we moved here!”
“I just learned how to code in Minecraft with ModBox!” 
“Wow, I’ve only done Lego Mindstorms.”
“Oh! We just started a Lego robotics team, do you want to join us?”
“Okay!”
I couldn’t believe I had made so many connections with the first person I ran into in the new school. I latched on immediately.
The robotic team wasn’t run by the school, but by two dads, both engineers. Three times a week, we gathered and tinkered with robots in Grant’s basement. Mr. Goodall was affable, witty, and a bit sarcastic, dragging all four of his kids into the robotics team. Mr. Whitfield was gentle, soft-spoken, always calm when talking to us, and reminded me of my Dad. These two families had been together for years. Although the whole team was friendly to me, once a while, I still felt like a plant dropped from a foreign land, just as I did when I was asked to climb on top of the human pyramid.
I stood there unmoving, my roots dug deep into the ground. I don’t remember what else went through my mind; I just wished my Dad was there. I grew up sitting on his shoulders and climbing on his back. If he were there, I would’ve jumped on without any hesitation. 
Mr. Goodall stood up after taking the picture. “Good job, Ryan! Ready to win at State?”
“Yeah!” I answered as if nothing had happened. 
“Our robot works great. However, in preparation for the state competition, we need to work more on team building. Are you guys ready?” Grant’s dad asked. 
 We put hands together and shouted, “Yeah, we are going to the State!!!” 
	Part of the state competition requirement was to present our team’s “Core Values”. We started doing team building activities such as trying to build a bridge without being able to talk to each other, testing our trust in one another, and following teammate’s instructions to climb over obstacles with a blindfold on. Mr. Whitefield even loaded all of us onto his Tandem bike to see if we’d be able to ride it together.  I felt there were invisible hands pulling our bonds of friendship tighter and tighter.  
At school, Grant was a guide who showed me everything. The band and soccer team invited me with open arms. I was active in the history fair and chemistry contests. With my new friends' help, some of the teachers didn’t even realize I was a new student at Lincoln! Life at Lincoln wasn’t as hard as I had imagined. The new community gave me a new home and confidence.
A year later, I was accepted into Whitney Young and Grant went to a private school in Boston. I joined the Whitney Young Robotics Team and again worked on collaborating and building trust with new friends. Each time at the club fair, I would use my own story to invite kids with no engineering experience and students new to the school to join the team. 
At the Robophin’s first regional robotics competition, we were constantly working as a team to fix and improve the robot for each upcoming match, and by the end of the day, we had won the competition. There I was again, in the same place as I was 4 years ago, again, in front of the same sign, again, beside the same cameraman, again preparing for our team photo. This time, it was me who asked my teammates if they want to make a Human Pyramid. Yes, they all agreed without hesitation. I kneeled down. Then, the other members joined, and in the blink of an eye, we had built a human pyramid. This time, instead of standing aside, I was the part of the foundation. To my surprise, the teammates on my back didn’t feel that heavy, as if some magic power had lifted their weight off me. At that moment, I began to realize what my experiences had taught me: The first robotics team taught me to always adapt to changes and embrace strangers, and the human pyramid taught me to trust and to support each other. 


Note - I would’ve taken out the portions of the essay that describe the two moments I had around being “photos”, but that’s because the human pyramid is only created because we as teams were posing for photos, giving it a purpose.


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
