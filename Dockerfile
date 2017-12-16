FROM jjmerelo/alpine-perl6:latest
LABEL version="3.0" maintainer="JJ Merelo <jjmerelo@GMail.com>" perl6version="2017.11"

# Set up dirs
RUN mkdir /app
WORKDIR /app
RUN zef install Bailador

# Will run this
EXPOSE 3000
ENTRYPOINT zef install --deps-only . && perl6 app.pl6


# Repeating mother's env
ENV PATH="/root/.rakudobrew/bin:${PATH}"

