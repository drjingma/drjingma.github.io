---
layout: default
title: Jing Ma, PhD
categories:
 - home
---
{% include JB/setup %}
{% for page in site.categories.misc %}
{% if page.homepage %}
	{% assign homepage = page %}
{% endif %}
{% endfor %}

<div class="row">
	<div class="col-md-12">
		<div class="bigtitle logobox">
			Jing Ma's Research
		</div>
	</div>	
</div> 


I am an [Assistant Member](http://www.fredhutch.org/en/labs/profiles/ma-jing.html) in the [Biostatistics Program](http://www.fredhutch.org/en/labs/phs/projects/biostats.html) at [Fred Hutch Cancer Research Center](http://www.fredhutch.org/en.html). 
The best way to contact me is through [email](/team/jingma). You can find direction to my office [here](assets/pdfs/team/ma-office.pdf).


<hr/>

<!--My primary research concerns estimation and inference from high-dimensional data, in particular to develop statistical machine learning methods to solve problems in genomics and microbiome.-->
I am a statistician with broad interests in statistical machine learning and high-dimensional data. The goal of my research is to develop new statistical methods for problems in the emerging 'omics' field, including genomics, metabolomics and microbiome, and address the associated algorithmic and inference issues. These new methods and computational tools have the potential for accelerating mechanistic understanding of the complex biological processes and developing vital resources for enabling systematic achievement of many biological, clinical, and public health problems.
Networks are important in this learning process because they are well-suited to representing interactions between biomolecules/microbes.
Some projects that I'm currently working on are:

* Joint analysis of metabolomic and microbiome data;
* High-dimensional inference of graphical models and networks;
* Network-based pathway enrichment analysis.

<hr/>

<!-- Before coming to the Hutch, I was a postdoctoral fellow at the University of Pennsylvania mentored by [Prof. Hongzhe Li](http://statgene.med.upenn.edu/) and [Prof. T. Tony Cai](http://www-stat.wharton.upenn.edu/~tcai/) from 2015-2017. I received my Ph.D. degree in Statistics in 2015 from the University of Michigan, under the supervision of [Prof. George Michailidis](http://www.stat.ufl.edu/personnel/Faculty%20Listing/index.html).
-->

For a complete list of publications, see my [Google Scholar](http://scholar.google.com/citations?user=TClZmdkAAAAJ). For more details about my background, read my [CV](/assets/pdfs/team/jingma-cv.pdf). 

<hr/>

<div class="row">
	<div class="col-md-12">
		<div class="head">
			{{ homepage.content }}
		</div>
	</div>				
</div>

<div class="row">
	
	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/news/">News</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox pad-left">
			{% for news in site.categories.news limit:5 %}
			
				{% for member in site.categories.team %}
					{% if member.handle == news.author_handle %}
						{% assign author = member %}
					{% endif %}
				{% endfor %}		
				
				<div class="note-title">
					<i class="fa fa-bullhorn"></i>
					<a class="off" href="{{ news.url }}">
					{{ news.title }}
					</a>
				</div>
				<div class="note">
					{{ news.content }}
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Posted
					{{ news.date | date_to_string }}
					{% if author %}
					by <a class="off" href="{{ author.url }}">{{ author.handle }}</a>
					{% endif %}						
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>
	
	
	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/papers/">Recent Papers
			</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox pad-left">		
			{% for paper in site.categories.papers limit:5 %}
				<div class="note-title">
					<i class="fa fa-file-text-o fa-fw"></i>
					<a class="off" href="{{ paper.url }}">
					{{ paper.title }}
					</a>
					<br/>
					<div class='shortref note'>
					{{ paper.shortref }}
					</div>
				</div>
				<div class="smallspacer"></div>
				<div class="smallnote">
					Published
					{{ paper.date | date_to_string }}
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>				
			{% endfor %}
		</div>
		<div class="bigspacer"></div>		
	</div>
	

	<div class="col-md-4">
		<div class="head">
			<a class="off" href="/blog/">Blogs</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox pad-left">
			{% for blog in site.categories.blog limit:5 %}
				<div class="note-title">
					<i class="fa fa-comment-o fa-fw"></i>
					<a class="off" href="{{ blog.url }}">
					{{ blog.title }}
					</a>
					<br/>
					<div class='shortref note'>
					{{ blog.description }}
					</div>
				</div>
				
				<div class="smallspacer"></div>
				<div class="smallnote">
					Posted
					{{ blog.date | date_to_string }}
					{% if author %}
					by <a class="off" href="{{ author.url }}">{{ author.handle }}</a>
					{% endif %}						
				</div>
				<div class="spacer"></div>	
				<div class="spacer"></div>
				
				<div class="smallspacer"></div>
				<div class="spacer"></div>
				<div class="spacer"></div>
			{% endfor %}
		</div>
		<div class="bigspacer"></div>
	</div>
	
	<!-- <div class="col-md-4">
		<div class="head">
			<a class="off" href="/projects/">Projects</a>
		</div>
		<div class="bigspacer"></div>
		<div class="feedbox pad-left">
			{% for project in site.categories.project limit:4 %}
				<div class="note-title">
					<i class="fa fa-terminal"></i>
					<a class="off" href="{{ project.url }}">
					{{ project.title }}
					</a>
					<br/>
					<div class='shortref note'>
					{{ project.tags }}
					</div>
				</div>
				<div class="smallspacer"></div>
				<div class="spacer"></div>
				<div class="spacer"></div>
			{% endfor %}
		</div>
		<div class="bigspacer"></div>
	</div> -->


</div>

<div class="bigspacer"></div>

