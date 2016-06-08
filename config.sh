INSTANCE="$(aoi config get maas_instance maas)"
DISTRO="$(aoi config get maas_distro xenial)"
MAAS_USER="$(aoi config get maas_user admin)"
MAAS_PASSWORD="$(aoi config get maas_password test)"

API_KEY="$(aoi config get maas_api_key '')"

PROFILE="$(aoi config get maas_profile admin)"

TESTNET_CIDR="172.16.99.0/24"
TESTNET_IP=172.16.99.2
TESTNET_GW=172.16.99.1
TESTNET_DYN_START=172.16.99.150
TESTNET_DYN_END=172.16.99.199
TESTNET_NETMASK=255.255.255.0

BOOT_SOURCE_URL="$(aoi config get maas_images_url '')"
UBUNTU_ARCHIVE_HOST="$(aoi config get ubuntu_archive_host '')"
PPA="$(aoi config get maas_ppa ppa:maas-maintainers/experimental3)"

LIBVIRT_USER="$(aoi config get libvirt_remote_user libvirt-qemu)"
LIBVIRT_PASSWORD="$(aoi config get libvirt_remote_password qwe123)"
