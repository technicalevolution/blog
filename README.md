# Techevo's Blog

----------------

This is the source material for my blog hosted at [blog.techevo.uk](https://blog.techevo.uk)

## 1) Why markdown?

I like the minimalism of being able to focus on content.

Frontend development is not my strong suite.
The CSS theme currently in use is from [github/markdowncss](https://github.com/markdowncss)


## 2) How is the HTML generated?

The `build.sh` script takes the markdown found in the `src` and uses [pandoc](https://pandoc.org/) to generate the HTML.
The `templates/template.html` provides a consistent way for the HTML pages to be loaded with the navigate bar and CSS themes.

Running `build.sh` offline will generate the site, and open a local copy of Firefox.
The beauty of markdown is that this site will work offline as well.

Once I'm happy with the site contents, and made sure it works as expected, 
I use the `publish.sh` script to synchronise the newly built pages with the online copy.

## 3) What content are you working on?

I'm going to try and use this blog to hold myself accountable to continue to develop skills in malware reverse engineering, CTF challenge writeups and other cyber security related topics of interest.

If there is a sample or topic you want to see a topic about, feel free to open an issue in Github, or hit me up on Twitter: [@techevo_](https://twitter.com/techevo_)

