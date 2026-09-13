install: 
	bundle install

build:
	bundle exec jekyll build

watch:
	bundle exec jekyll serve --watch

all: 
	bundle exec jekyll serve

drafts:
	bundle exec jekyll serve --drafts
