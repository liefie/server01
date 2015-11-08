# Readme

This repository is used to track *all* software or configuration changes deployed to this server. It also includes a Vagrantfile so you can boot an instance of the server locally for testing with.

## Provisioning

1. Boot up a new Ubuntu-based server. A LTS version is **strongly recommended**
ssh r2. Open an network firewall ports if applicable and copy your public key to the root user on the server
3. From your local machine, run `./install.sh`

## Deploying

Sites are stored in `/opt/example.com`. Nginx expects a `nginx.conf` file to exist in each directory within `/opt`, eg `/opt/example.com/nginx.conf`. This is the virtual host config for your site, allowing you to manage how requests are routed.