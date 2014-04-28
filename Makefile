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
	
