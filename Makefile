
BABEL = ./node_modules/.bin/babel
BROWSERIFY = ./node_modules/.bin/browserify

all: node dist

dist: index.js
	@$(BROWSERIFY) -t babelify index.js \
		--standalone rafDebounce \
		--outfile dist/raf-debounce.js

node: index.js
	@$(BABEL) "index.js" > "node/index.js"
