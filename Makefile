run-simple-server:
	# server runs on http://localhost:1337
	cd simpleserver && npm start

run-express-website:
	# server runs on http://localhost:3000
	cd express_website && node app

run-nodeauth:
	# server runs on http://localhost:3000
	cd nodeauth && node app

run-nodeblog:
	# server runs on http://localhost:3000
	cd nodeblog && npm start

run-tekbooks:
	# server runs on http://localhost:8000
	cd TekBooks && npm start

######### Database setup commands for apps ###########
setup-db-nodeblog:
	# use nodeblog
	mongo nodeblog setup-nodeblog.js

setup-db-tekbooks:
	cd TekBooks
	cd TekBooks && npm install -g yo generator-kraken bower grunt-cli
	cd TekBooks && npm install mongodb mongoose connect-flash express-messages
	# yo kraken
  # you should Release the kraken
  # so that we can name things/setup the project, not necessary now
	mongo tekbooks setup-tekbooks.js

######### Mongo Setup Commands ###########
setup-mongo:
	mkdir -p data/db
	chown -R `id -un` data/db

start-mongo:
	# https://dba.stackexchange.com/questions/82591/sample-yaml-configuration-files-for-mongodb
	mongod --config mongodb.config.yaml

install-mongo-osx:
	brew install mongo

