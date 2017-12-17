# A docker container for Bailador.

This is the repo for the Docker container for
the [Bailador](https://github.com/Bailador/Bailador) module. It is
hosted at Docker hub, so just do 

		sudo docker pull jjmerelo/bailador
		
to download and start using it.

## Install the test script

Just do

    zef install --deps-only .
	
## Build the image

	sudo docker build -t jjmerelo/bailador .
	
## Run the web service

It runs a program called `app.pl6`. Just go to the directory where it
is placed and run

	sudo docker run -p 3131:80 --rm -it -v  $PWD:/app jjmerelo/bailador
	
If you want to emit it via port 3131. Then use it

	curl http://localhost:3131
	

or open `http://localhost:3131` in the browser.

If the name is different use `--entrypoint` to override the default
command.

## Problems? Questions?

This Dockerfile is
hosted [in GitHub](https://github.com/JJ/bailador-perl6-docker). Raise
an issue if you need help or have suggestions. 
