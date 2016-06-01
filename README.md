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

    $ ./init-chassis

The default MAAS username is `root` with the password `qwe123`.

You will be logged into the MAAS CLI under the `root` profile:

    $ aoi-ssh maas maas list

## Tips

If you are using `aoi-maas` on a system without a web browser, you can use
SSH port forwarding to access the MAAS UI from another system:

    ssh -L8181:<maas-ip>:5240

Then access `http://localhost:8181/MAAS/` on your local system.

## To-do List

 * Set up testnet subnet with a dynamic range
 * Add SSH keys
