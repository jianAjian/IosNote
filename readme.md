
ABOUT
-----

My personal Blog, it is developed from scratch using [Jekyll] and [Bootstrap].

[Jekyll]: http://jekyllrb.com
[Bootstrap]: http://getbootstrap.com

DIRECTORIES
-----------

Most directories are the ones defined by Jekyll to generate a site. These are the ones created
for this site:

* `_bin` contains the shell scripts needed to build the blog and its resources.
* `_graphics` holds graphic resources used in the site.
* `_less` LESS styles of the blog.


FORKING THE SITE
----------------

You can base your blog on this by forking it at Github. Don't forget to:

* Change `_graphics/icon.png` (see `icons.sh`).
* Pick another style (or change an existing one). See `styles.sh` and `themes.sh`.
* You can delete the CV, unless you pretend to be me (which I strongly discourage).
* Of course, fill the `_drafts` and `_posts` directories with your own content.
* Change `CNAME` and `humans.txt` files.
* Change background photo and or theme.


THANKS TO
---------

The following projects:

* The [Jekyll] Blog engine.
* [JekyllBootstrap](http://jekyllbootstrap.com) for `sitemap.txt` and `rss.xml` files.
* Custom icons are taken from [IcoMoon](http://icomoon.io).
* [Font Awesome](http://fontawesome.io) is used for the rest of the icons.
* The theme is based on [Bootswatch](http://bootswatch.com).
* And the [Modern Business](http://startbootstrap.com/modern-business) theme.

The following persons:

* [Carlos Alexandro Becker][calexandro] for his Jekyll theme ["UP"][up].
* [Jason Rudolph][jrudolph] for inspiring me (basicly copying) in the design.
* [Duey Finster][dfinster] for his awesome design (from which I borrowed some details).

The following companies for hosting site's files:

* The pages are hosted in [Github](http://github.com).
* Some resources are served from [Bootstrap CDN](http://bootstrapcdn.com).
* And [Cloudflare's free CDN](http://cloudflare.com).

[calexandro]: http://carlosbecker.com/
[up]: http://github.com/caarlos0/up
[jrudolph]: http://jasonrudolph.com
[dfinster]: http://www.dueyfinster.com


LICENSE
-------

The MIT License

Copyright © 2014 Juan José Aguililla. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


PENDING TASKS (TODO)
--------------------

  * Pagination, share (tweet, I like, etc...) `_config.yml`
  * Widgets to share: Twitter, Stackoverflow, github, permalink, etc
  * Add CSS animations for navbar brand over and main title over. Check
    [daneden.me](http://daneden.me/animate) site
  * Search box
  * Convert `modern-business.css` to less
  * Aside: Archive, Tags
  * Add projects menu
  * Pygments
  * Render resume
  * Responsive view of all pages
  * Change post final section for 'footer' (change styles)
  * Change permalinks to use only the title
  * Use commas to separate categories and tags
  * Change the Twitter button style (dark one)
  * Finish 404 page
