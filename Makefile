JS_LIB = yijun.js hljs.js
JS_APP = manual.js
DOC_SASS = overview.md module.md zitijixing_extend.md sectional.md inline.md variable.md
DOC_JS   = overview.md rendering.md normalize.md inline.md support.md find.md unicode.md

a : doc

run ::
	node ./s.js 9999 | jade -Pw *.jade | sass --watch sass:. --style compressed

build ::
	bower install
	make doc
	make han
	make fa
	make app.js
	sass sass/style.sass:style.css --style compressed

doc ::
	cd doc/sass && cat $(DOC_SASS) > ../sass.md
	cd doc/js && cat $(DOC_JS) > ../js.md

lib.js ::
	cd src/lib && cat $(JS_LIB) > ../lib.js

main.js ::
	cd src/app && cat $(JS_APP) > ../main.js

app.js ::
	make lib.js
	make main.js
	cat src/lib.js src/main.js > app.js
	uglifyjs app.js -m -o app.js

han ::
	rm -r -f src/lib/han
	mkdir src/lib/han src/lib/han/font
	cp bower_components/han/han.min.css src/lib/han
	cp bower_components/han/han.min.js src/lib/han
	cp bower_components/han/font/* src/lib/han/font

han-dev ::
	rm -r -f src/lib/han
	mkdir src/lib/han src/lib/han/font
	cp ../han/han.min.css src/lib/han/
	cp ../han/han.min.js src/lib/han/
	cp ../han/font/* src/lib/han/font

fa ::
	rm -r -f src/lib/fa
	mkdir src/lib/fa
	cp bower_components/font-awesome/fonts/* src/lib/fa
	rm src/lib/fa/*.eot && rm src/lib/fa/*.ttf
