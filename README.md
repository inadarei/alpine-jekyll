# alpine-jekyll
Minimal Jekyll Docker container based on Alpine Linux

## Prerequisites

You need to have Docker working, for this to work. The easiest way to install Docker on Windows or Mac is by [using Docker Machine](https://www.docker.com/docker-toolbox)

## Usage

1. Put the following in a startup script of yours (~/.profile, ~/.bash_profile etc):

    ```console
    alias jekyll='docker run --rm -v $(pwd):/tmp/jekyll -w "/tmp/jekyll" -it -p 4000:4000 irakli/jekyll'
    ```
2. Use as you would otherwise, e.g.:
    
    ```console
    jekyll s -w
    ```

The generated website will be available on port 4000 of the IP where your Docker host is available. It may be 127.0.0.1 (as Jekyll reports) but it actually won't be 127.0.0.1 if you are using something like Docker Machine. To figure-out the IP where the generated webpage is availale, in case of Docker Machine, you can run something like:

```
docker-machine ip `docker-machine active`
```
