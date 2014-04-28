# Heroku user makefile for deploying project 'yoyo' to Heroku server
# make -s -f Makefile deploy

hello:
	echo "Hello. This is for deploying project 'yoyo' to Heroku server. Use the 'deploy' option."

deploy:
	echo "about to push project-yoyo to heroku"
	echo "test for success by doing 'heroku ps', check for one web process running"
	git checkout master
	git pull
	git push --force heroku master
	
test_ssh:
	exec ssh-agent bash
	ssh-add -l
	git ls-remote -h git@heroku.com:tranquil-waters-8854.git HEAD
