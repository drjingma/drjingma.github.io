---
layout: default
title: Ma Lab
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
			Statistical Learning for Big Biomedical Data
		</div>
	</div>	
</div> 


<!-- I am an Assistant Professor of [Biostatistics](https://www.fredhutch.org/en/research/divisions/public-health-sciences-division/research/biostatistics.html) in the Public Health Sciences Division at [Fred Hutchinson Cancer Research Center](https://www.fredhutch.org/en.html). During the 2019-2020 academic year, I was an Assistant Professor in the [Department of Statistics](https://www.stat.tamu.edu/) at Texas A&M University.  
<hr/>

I am a statistician with broad interests in statistical learning applied to biomedical big data. My research interests include graphical models, high-dimensional inference, and data integration. I am currently working on robust and efficient statistical methods for microbiome data analysis.  -->

The Ma Lab at [Fred Hutchinson Cancer Research Center](https://www.fredhutch.org/en/faculty-lab-directory/ma-jing.html) specializes in statistical and computational methods for big biomedical data. We address statistical challenges faced with interpreting complex health data, and develop novel statistical methods to enhance reproducible biomedical discoveries. Our current research interests include microbiome data analysis and statistical data integration with applications to cancer biology and aging.   


Our lab collaborates with Dr. [Daniel Promislow](http://www.promislowlab.org/) on the [Dog Aging Project](https://dogagingproject.org/), supported by U19 grant AG057377 from the National Institute of Aging, a part of the National Institutes of Health. 

<!--For a complete list of publications, see my [Google Scholar](http://scholar.google.com/citations?user=TClZmdkAAAAJ). For more details about my background, read my [CV](/assets/pdfs/team/jingma-cv.pdf). The best way to contact me is through [email](/team/jingma).-->

<hr/>

**Postdoc Position Available**

 - [Postdoc Position on Statistical Methods for Microbiome Research](https://docs.google.com/document/d/1NCBW1isIPvrEo5hCW5bgrRrILr_VPLl8pUUXT6nkXH8/edit?usp=sharing)

**Advising**: We are recruiting motivated and hard-working students interested in statistical learning for bimedical data. If you are an undergrad or graduate student at the University of Washington, and you are interested in any of the papers or projects listed on this website, send me an email with your interests and CV. 

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

