# Development environment

Runtime development environment made to host Node and Go applications.

### How to run

`docker run -d --name development -v /home/bembi.dev-layout:/home/data -p 127.0.0.1:9990:1234 -p 127.0.0.1:44000:44412 -w /home/data kesshin/development:latest parcel serve --hmr-port 44412 public/index.html`

or

`docker run -d --name development -v /home/bembi.dev-layout:/home/data -p 127.0.0.1:9990:1234 -p 127.0.0.1:44000:44412 -w /home/data kesshin/development:latest yarn dev`