manage = python manage.py
install = pip install

docker:
	docker build .
createsuperuser:
	${manage} createsuperuser
install-dev:
	${install} -r requirements/dev.txt
install-js:
	npm install
build-js:
	node_modules/grunt-cli/bin/grunt
migrate:
	${manage} migrate
run:
	${manage} runserver
shell:
	${manage} shell
test:
	node_modules/grunt-cli/bin/grunt
	${manage} test
dev-bootstrap: install-dev migrate install-js build-js createsuperuser
