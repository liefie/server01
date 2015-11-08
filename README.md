# Readme

This repository is used to track *all* software or configuration changes deployed to this server. It also includes a Vagrantfile so you can boot an instance of the server locally for testing with.

## Provisioning

1. Boot up a new Ubuntu-based server. A LTS version is **strongly recommended**
2. Open any applicable network firewall ports and copy your public key to the root user on the server
3. From your local machine, run `./install.sh {server IP}`

## Deploying

Sites are stored in `/opt/example.com`. Nginx expects a `nginx.conf` file to exist in each directory within `/opt`, eg `/opt/example.com/nginx.conf`. This is the virtual host config for your site, allowing you to manage how requests are routed.
