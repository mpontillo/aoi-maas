## Introduction

The scripts in the `aoi-maas` repository use `aoi` in order to deploy MAAS.

This will create a virual machine, add the appropriate PPA, sync boot
resources, create some virtual machines on the test network, and
then

## Usage

    $ git clone https://github.com/pontillo/aoi.git
    $ export PATH="$(pwd)/aoi:$PATH"
    $ aoi init
    $ git clone https://github.com/pontillo/aoi-maas.git
    $ cd aoi-maas
    $ ./deploy

At this point you should have a fully functional (almost) MAAS. You'll
now need to add your SSH keys and configure DHCP, then you can start
commissioning nodes!

To grab the IP address of your new MAAS, you can use:

    $ aoi-get-ip-via-arp maas
    <maas-ip>

To create some virutal machines on the local hypervisor and then commission
them, you can do:

    $ ./configure-libvirt-remote
    $ ./init-chassis

You'll only need to run `configure-libvirt-remote` once. That configures your
local libvirt so that MAAS inside the virtual machine can access it. You can
set a custom password by running:

    $ aoi config set libvirt_remote_password <your-desired-password>

The default MAAS username is `root` with the password `qwe123`.

You will be logged into the MAAS CLI under the `root` profile:

    $ aoi-ssh maas maas list

## Tips

### Setting the Image URL

If you want to use a local mirror for your images, you can use the `aoi config`
command to set the `maas_images_url` to your local mirror. For example:

    $ aoi config set maas_images_url http://172.16.42.88/images/ephemeral-v2/daily/

The configuration is stored in `~/.aoi/config` in a JSON file.

### Port Forwarding

If you are using `aoi-maas` on a system without a web browser, you can use
SSH port forwarding to access the MAAS UI from another system:

    $ ssh -L8181:<maas-ip>:5240

Then access `http://localhost:8181/MAAS/` on your local system.
