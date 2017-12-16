# bailador-perl6-docker

Docker container for the Bailador module

## Install the test script

Just do

    zef install --deps-only .
	
## Build the image

	sudo docker build -t jjmerelo/bailador .
	
## Run the web service

	sudo docker run -p 3131:80 --rm -it -v  $PWD:/app jjmerelo/bailador
	
If you want to emit it via port 3131. Then use it

	curl http://localhost:3131
	

or open `http://localhost:3131` in the browser.
