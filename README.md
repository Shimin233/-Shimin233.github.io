# Shimin233.github.io
Welcome to my [Github page](https://shimin233.github.io) :D

## Questions
### Jekyll installation problem- to be used for Github pages formatting
Try `jekyll new myblog` and`jekyll -v`, in both cases it outputs `no command found`, so installation is not successful. Retry:\
- Jekyll installation not successful: when installing jekyll [from local](https://jekyllrb.com/docs/installation/macos/#local-install), get the Warning:\
`"You don't have [PATH ]in your PATH, gem executables will not run." while using "gem install --user-install bundler"`. 
  - I tried to follow [such solution](https://www.jianshu.com/p/5902b55dc654?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation), and refer to [Related Q&A](https://stackoverflow.com/questions/53979362/you-dont-have-path-in-your-path-gem-executables-will-not-run-while-using), not successful.
  - Another idea from [this article](https://www.jianshu.com/p/82652c7a1fa4), maybe restarting Terminal will have jekyll existing there?
  - Another [possible solution](https://stackoverflow.com/questions/8146249/jekyll-command-not-found)
------------------Update----------------
  - Thanks to this [answer](https://stackoverflow.com/a/51921506) belonging to this [Q&A](https://stackoverflow.com/questions/8146249/jekyll-command-not-found), I changed the location of gem by `$ gem install -n /usr/local/bin jekyll`, and now inputting `jekyll -v` outputs `jekyll 4.2.1`, installation successful. 
- Next, try to follow [official Quickstart guide](https://jekyllrb.com/docs/#instructions), created Step 3 `New jekyll site installed in /Users/shiminfu/myblog. `; \
- Step 4, inputting `cd myblog`(also tried `cd /Users/shiminfu/myblog` once, when it says no such directory found), next I have
`(base) ShimindeMacBook-Pro:myblog shiminfu$`, so I guess it works; 
- Step 5, due to Ruby version and by suggested by Jekell Quickstart guide, I tried `bundle add webrick` 
and then `bundle exec jekyll serve`, Terminal keeps running and no result is given. 
    - I closed Terminal and restarted it, this step again stays here
```
    (base) ShimindeMacBook-Pro:myblog shiminfu$ bundle exec jekyll serve
Configuration file: /Users/shiminfu/myblog/_config.yml
            Source: /Users/shiminfu/myblog
       Destination: /Users/shiminfu/myblog/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
       Jekyll Feed: Generating feed for posts
                    done in 0.516 seconds.
 Auto-regeneration: enabled for '/Users/shiminfu/myblog'
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
``` 
Don't worry, just go to http://localhost:4000 in the browser, it works! But simultaneously the Terminal has new lines produced:
```
Server running... press ctrl-c to stop.
[2022-02-23 17:00:23] ERROR `/apple-touch-icon-precomposed.png' not found.
[2022-02-23 17:00:23] ERROR `/apple-touch-icon.png' not found.
[2022-02-23 17:00:23] ERROR `/favicon.ico' not found.
```
However, I guess the most core part of a new blog is completed and such details can be left for later :D

- (optional)when [installing rbenv](https://jekyllrb.com/docs/installation/macos/#rbenv), at the step of 
```
# Set up rbenv integration with your shell
rbenv init

# Check your installation
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
```
have a problem `Checking for rbenv shims in PATH: not found`. [Related Q&A](https://github.com/rbenv/rbenv/issues/1217)

- After creating the repository folder for my new blog, design and edit it following this [guide](https://jekyllrb.com/docs/step-by-step/01-setup/).

### MkDocs - to be used to Github pages formatting 2
[Materials for MkDocs](https://squidfunk.github.io/mkdocs-material/)

### Add author / copyright info to the image I drew

### The update the resulting webpage has a delay
Maybe I need to set the correct timezone, see [this suggestion](https://stackoverflow.com/a/35388975)

### Add texts above image
see [guide](https://www.w3schools.com/howto/howto_css_image_text.asp)

### Rotation not successful in Safari
see [suggestion](https://stackoverflow.com/questions/44316184/transform-rotate-doesnt-work-in-safari)

### Cut and resize image at the same time
[multiple solutions here](https://stackoverflow.com/questions/493296/css-display-an-image-resized-and-cropped); 
if want to resize to the screen size, check [this](https://stackoverflow.com/questions/4684304/how-can-i-resize-an-image-dynamically-with-css-as-the-browser-width-height-chang)

### How enable efficient whole-website keyword search?
to simplify review and summary of previous notes/ideas; also enable multi-task viewing, like across-notes

### Timeline structure of contents shown explicitly?
to clearly show my learning/career paths



## Potential projects to put
### Job scraping

#### Good example to learn from
Thanks to https://yang-xijie.github.io, I got inspired by structures and contents

### My learning and notes
links to my Github repositories

### Languages, hobbies, etc
Mandarin, English, French (basic)\
Music: Erhu\
Others: Jazz Dance, FIgure skating, Manga drawing

### Those in cover letter
zoom meeting in 2020-21 winter; tutoring and volunteer experience; (video channel); 

### CFA I

### Coursera 
[Python and web scrapping](https://www.coursera.org/learn/python-project-for-data-science/home/week/1)
 there is a 6-month extension to the IBM cloud trial account, while the IBM cloud account is necessary to create the final result of the final project of week 1; decide carefully when to start the trial + this extension. \
[Prerequisite](https://www.coursera.org/learn/python-for-applied-data-science-ai/lecture/W6xwd/rest-apis-http-requests-part-1)


### Data analysis
mindmaps, summaries

### Insights and ideas into certain topics
the difference between subjects with experiments and surveys in real word, and those only need pen&paper(pure maths except part of stats; theoretic physics?): collect facts from real world and trace back to study the underlying mechanism (e.g. empirical stats in finance like empirical duration), while the latter ones build mechanism and structure of theory to lead to results in real word (e.g. cannot invent an unknown maths theorem)

### Leetcode/Quant interview: any project?
