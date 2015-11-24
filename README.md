# alpine-jekyll
Minimal Jekyll Docker container based on Alpine Linux

## Usage

```console
alias jekyll='docker run --rm -v $(pwd):/tmp/jekyll -w "/tmp/jekyll" -it -p 4000:4000 irakli/jekyll'
```
