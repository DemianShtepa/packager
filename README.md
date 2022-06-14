**Motivation**

This packer allows you to pack the compiled production version of the application into a docker container, to avoid
problems with a variety of environments.

**How to pack?**

- Go to project root;
- Go to the source code and select the desired branch `cd public-website; git checkout master`;
- Build the image with desired tag `docker build -t DemianShtepa/public-website:0.0.1 .` (for example);
- Push this image into the image register `docker push DemianShtepa/public-website:0.0.1` (same with previous);

**How to run?**

- Run command `docker run -d -p 80:80 -p 443:443 DemianShtepa/public-website:0.0.1` (same with previous);


Also, **you can use the interactive packaging utility** `make pack`, and interactive runner `make run`;
To do this, you need to specify the correct project name in the .env file, and make sure you have access to the registry;
