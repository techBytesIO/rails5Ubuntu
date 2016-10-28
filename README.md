# Rails 5 Ubuntu Development Server

These are the provisioning files for standing up your own Ruby on Rails development environment with Vagrant.

You can download the box from the official Vagrant site at [](https://atlas.hashicorp.com/techbytes/boxes/Rails5Ubuntu)

__Consists of:__
* Ubuntu 14.04.5 LTS
* Ruby 2.3.1
* Rails 5
* nodejs 6.4.0
* PostgreSQL 9.5.4
* htop Process Viewer

## Standing up your Rails Development Environment
Watch the tutorial on setting it up on [techBytes.io](http://www.techbytes.io/videos/16)
### Pull down the box from Vagrant
You can download the box from the official [Vagrant site](https://atlas.hashicorp.com/techbytes/boxes/rails5Ubuntu)
- or -
Go to your terminal and add the box this way:
vagrant box add techbytes/rails5ubuntu

### The quick down and dirty to mod your own play with the config
clone this Repo

cd into the file, open the files and alter

`vagrant init techbytes/rails5ubuntu`

`vagrant up`

ta-da -- Now you have your Rails 5 Development Environment

You can package this so that it is available for you on your host machine at anytime.

With your Rails5Ubuntu box up and running:
`vagrant package --output WHATEVEREYOUWANTTONAMEIT`
