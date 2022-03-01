## Display notes on webpage
I want to show my notes in a tidy and preferably interactive way on my personal webpage, including:
- markdown, .md
  - same repository as Github page, i.e. Shimin233.github.io
  - across repository
- Jupyter notebook, .ipynb
- LaTeX and maths
  - for a whole maths docu, pdf is ok
  - previous trials with markdown notes show that individual mathematical expressions on Github require Jupyter notebook

### Markdown in the same repository as Github page using Jekyll - \_config.yml
[Guide](https://nicolas-van.github.io/easy-markdown-to-github-pages/). I have to figure out how to apply .yml if I start with a repository without any
configuration file.
----update-----------
i did it! :D The steps are as below:
1. use any text tool to type
 ```
 plugins:
  - jekyll-relative-links
relative_links:
  enabled: true
  collections: true
future: true
include:
  - CONTRIBUTING.md
  - README.md
  - LICENSE.md
  - COPYING.md
  - CODE_OF_CONDUCT.md
  - CONTRIBUTING.md
  - ISSUE_TEMPLATE.md
  - PULL_REQUEST_TEMPLATE.md
  - JobScraping.md
 ```
 where I think those .md files are completely up to what .md files you want to show - but I did not delete any from the [guide](https://nicolas-van.github.io/easy-markdown-to-github-pages/) just for safety. Then just save it with name `_config.yml' to your personal webpage .github.io repository folder. Yes, just type it and save, yout computer will recognise how to use it for your webpage (for example, my mac opens it with Visual Studio code by default ;P)
2. Quote the .md file, by simply replacing the `.md` extension by `.html`, in your index.html; the format `<a href=""></a>` is just like quoting another html, images and pdfs in html. Your jekyll and \_congif.yml will then recognise that you want to display this .md in the form of a html webpage. My codes are like:
```html
<p class="sans-serif"> I am simultaneously trying to apply what I learned to real needs, such as 
      <a href="JobScraping.html">Webscraping for job descriptions</a> </p> <!--JobScrapingmd is in the same folder as index.html-->
```
3. Done! Click `Webscraping for job descriptions` on the page, it will lead to a clean html-like dispaly of your .md file. 
