
default:
	${MAKE} serve

serve:
	jekyll _3.9.4_ serve --watch

build:
	jekyll _3.9.4_ build --watch

publish:
	open https://github.com/dotHTM/dothtm.github.io/actions
	smerge .