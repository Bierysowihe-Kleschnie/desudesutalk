all: ddt.user.js ddt.meta.js

%.js: ; cat $^ > $@

ddt.user.js: src/metablock.js src/_head.js dist/crypto.js dist/libs.js src/misc/storage.js src/misc/helpers.js src/misc/utf8array.js src/misc/jsf5steg.js src/misc/jpeg.js src/misc/boards.js src/misc/codec.js src/misc/contacts.js src/misc/crypt.js src/misc/jpeg.js src/misc/ui.js src/misc/wakabamark.js src/main.js src/_tail.js 

ddt.meta.js: src/metablock.js

dist/crypto.js: src/crypto/jsbn.js src/crypto/jsbn2.js src/crypto/prng4.js src/crypto/rng.js src/crypto/sha1.js src/crypto/sha256.js src/crypto/rsa.js src/crypto/rsa2.js src/crypto/rsa-sign.js src/crypto/sjcl.js 

dist/libs.js: src/libs/zepto.min.js src/libs/jquery.identicon5.js src/libs/pako.min.js src/libs/highlight.pack.js 

clean: ddt.user.js ddt.meta.js dist/crypto.js dist/libs.js
	rm -f $^
