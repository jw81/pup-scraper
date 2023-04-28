# pup-scraper
Dockerized [pup](https://github.com/ericchiang/pup) used for scraping HTML

## Usage
- run `docker build -t my-pup-scraper .` to build the Docker image
- run `docker run --rm -e URL='http://www.google.com' -e FILTER='body' my-pup-scraper` to create a Docker container and run pup
  - `--rm`
    - removes/deletes the container after it finishes running
  - `-e URL='http://www.google.com`
    - sets an environment variable named `URL` to the value `http://www.google.com` (change this to whatever url you need to scrape)
  - `-e FILTER='body'
    - sets an environment variable named `FILTER` to the value `body` (change th is to whatever HTML/CSS selectors you need to scrape)
## Note
- If you want to ignore all of the HTML tags and just extract the raw text, you can run the command like this ::
  - `docker run -e URL='http://www.google.com' -e FILTER='body text{}' my-pup-scraper`
