# Docker Orgmk

Docker image based on Alpine Linux to use [orgmk](https://github.com/fniessen/orgmk).

Ships with a simple shell script helper (`ormk.sh`) to run the image.

## Running

Directly via `docker run`:

`$ docker run -v source.org:/tmp/source.org gbr/orgmk org2html source.org`

Or via `orgmk.sh`:

`$ sh orgmk.sh html source.org`

### LaTeX not available

Orgmk requires `LaTeX` to be able to export to PDF. It's currently not available
due to `texlive` issues on Alpine Linux. Check [#1](https://github.com/gabrielalmeida/docker-orgmk/issues/1).

### License

MIT
