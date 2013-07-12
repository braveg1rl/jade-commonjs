build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"jade-commonjs", "description":"Create CommonJS module from Jade template.","private":false}'
	mkdir -p src
	touch src/jade-commonjs.coffee
	mkdir -p test
	touch test/jade-commonjs.coffee
	npm install
	git init
	git remote add origin git@github.com:meryn/jade-commonjs
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test