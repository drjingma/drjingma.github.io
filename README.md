Ma Lab Website in development: [click to view](https://drjingma.com/)

# Deploying these Pages

The site is deployed by the GitHub Actions workflow `.github/workflows/jekyll.yml`. Every push to `main` builds the site with Jekyll on GitHub and publishes it to GitHub Pages (custom domain set in `CNAME`). The workflow can also be run manually from the Actions tab.

To publish a change:

1. Edit or add the source files (e.g. a paper in `papers/_posts/`, a news item in `news/_posts/`, a member in `team/_posts/`, and PDFs/images under `assets/`).
2. Build locally to check the result:

```
bundle exec jekyll build      # or: bundle exec jekyll serve, then open http://localhost:4000
```

3. Commit and push to `main`:

```
git add -A
git commit -m "describe the change"
git push origin main
```

4. Check the run under the repository's Actions tab; the site updates when the deploy job finishes.

The `_site` directory is tracked in the repository, but GitHub Pages serves the copy built by the workflow, not the committed one. `_scripts/update-and-preprocess.rb` is not needed: it only updates GitHub project repositories, and `_config.yml` lists none.

# Configuring the Development Environment on SciComp Hosts

We need two things- ruby and nodejs.  These are not typically installed on compute nodes, but are available in modules.  Run these commands prior to using the bundle commands:

```
ml Ruby/2.7.2-GCCcore-10.2.0 nodejs/12.19.0-GCCcore-10.2.0
```

Verify that all the dependencies are up-to-date:

```
bundle install
```

This vendors gems into `vendor/bundle`.  Then you should be able to build:

```
bundle exec jekyll build

``` 

Once built, serve via jekyll

```
bundle exec jekyll serve -V -P 9099 -H <ip>
```

You can get `<ip>` via the command `ip addr`.  This will then be able to view the site via the URL `http://<ip>:9099`

# Notes from Zhenke Wu

* After cloning the repo to your local folder, you'll need to install jekyll to build and test your modified site. 

* fonts
	- Use [Typekit](https://typekit.com/) to publish fonts you like; register an Adobe account;
	- Modify `$font-stack` in `/assets/themes/lab/css/style.scss` to include your fonts. Extra font names are used as fallbacks.
* posts
    - To add a post, e.g., a new paper, follow the format of the existing `.md` files
    - Comment out `</div>` if there are a multiple of three papers in each subsection; otherwise, there will be errors of indentation. 
* tracking
	- To link your site to Google analytic services, modify the `tracking_id` in `_config.yml` file in the root directory so that it points to your website.
* MathJax (also see [here](http://www.idryman.org/blog/2012/03/10/writing-math-equations-on-octopress/) )
	- To properly display the math expressions rendered by MathJax, 
		+ Add `kramdown` after on the line of `markdown: ` in `_config.yml`; this prevents markdown language to intervene with LaTex commands; Also put `gem 'kramdown'` in `Gemfile`;
	- Add the following code block to /_includes/themes/lab/default.html, before `</head>`
	
>
     <!-- Math via MathJax -->
	<script type="text/x-mathjax-config">
	MathJax.Hub.Config({
	  jax: ["input/TeX", "output/HTML-CSS"],
	  tex2jax: {
	    inlineMath: [ ['$', '$'] ],
	    displayMath: [ ['$$', '$$']],
	    processEscapes: true,
	    skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
	  },
	  messageStyle: "none",
	  "HTML-CSS": { preferredFont: "TeX", availableFonts: ["STIX","TeX"] }
	});
	</script>
	<script src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML" type="text/javascript"></script>

* projects
    - For each repo (in the folder `/_data`), the `url` should not end with `/`. For example, use `url: /projects/baker`, instead of `url: /projects/baker/`
* navigation:
    - For example, the "papers" tab is specified in the folder "papers/". At the top, `title` is for tab name; `group` can be either `navigation` or `subnavigation` depending on whether you want to show this tab or collapse into the "More" tab; `navorder` specifies the order appearing in the navigation bar (1 for the first tab).
