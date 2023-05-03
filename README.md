# pup-scraper
Dockerized [pup](https://github.com/ericchiang/pup) used for scraping HTML

## Usage
### If you want to build the Docker image yourself and run it ::
- run `docker build -t my-pup-scraper .` to build the Docker image
- run `docker run --rm -e URL='http://www.google.com' -e FILTER='body' my-pup-scraper` to create a Docker container and run pup
  - `--rm`
    - removes/deletes the container after it finishes running
  - `-e URL='http://www.google.com`
    - sets an environment variable named `URL` to the value `http://www.google.com` (change this to whatever url you need to scrape)
  - `-e FILTER='body'`
    - sets an environment variable named `FILTER` to the value `body` (change this to whatever HTML/CSS selectors you need to scrape)

### Or if you want to just run the Docker image stored in DockerHub ::
- run `docker run --rm -e URL='http://www.google.com' -e FILTER='body' jeffreywallace81/pup-scraper`

## Notes
- If you want to ignore all of the HTML tags and just extract the raw text, you can run the command like this ::
  - `docker run --rm -e URL='http://www.google.com' -e FILTER='body text{}' my-pup-scraper`
- For an example of a more complex HTML/CSS selector, go look at the default value for the `FILTER` environment variable in the `Dockerfile`. [REF](https://github.com/jw81/pup-scraper/blob/main/Dockerfile#L9)
