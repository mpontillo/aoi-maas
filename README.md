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
    $ ./init-chassis
    $ aoi-get-ip-via-arp maas
    <maas-ip>

The default MAAS username is `root` with the password `qwe123`.

You will be logged into the MAAS CLI under the `root` profile:

    $ aoi-ssh maas maas list

## Tips

If you are using `aoi-maas` on a system without a web browser, you can use
SSH port forwarding to access the MAAS UI from another system:

    ssh -L8181:<maas-ip>:5240

Then access `http://localhost:8181/MAAS/` on your local system.
