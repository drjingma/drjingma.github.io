# -*- encoding: utf-8 -*-
# stub: jekyll-press 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-press".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sterebooster".freeze]
  s.date = "2013-06-04"
  s.description = "Minifier plugin for jekyll. Minifies all html, js, css files. Simple just drop it in solution. No Java required".freeze
  s.email = ["stereobooster@gmail.com".freeze]
  s.homepage = "http://github.com/stereobooster/jekyll-press".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.4".freeze
  s.summary = "Minifier plugin for jekyll. This plugin compress html with the help of html_press, compress JavaScript files with the help of uglifier, compress css files with the help of css_press".freeze

  s.installed_by_version = "3.3.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<html_press>.freeze, [">= 0.8.2"])
    s.add_runtime_dependency(%q<multi_css>.freeze, [">= 0.1.0"])
    s.add_runtime_dependency(%q<multi_js>.freeze, [">= 0.1.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 0"])
    s.add_dependency(%q<html_press>.freeze, [">= 0.8.2"])
    s.add_dependency(%q<multi_css>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<multi_js>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
