#!/usr/bin/python

from pyVim import connect

my_cluster = connect.ConnectNoSSL("172.16.0.6", 443, "root", "BlizzanBandits123")


searcher = my_cluster.content.searchIndex
vm = searcher.FindByIp(ip="172.16.0.19", vmSearch=True)
print("VM Config Details for 172.16.0.19")
print(vm.config.name)
print(vm.config.guestFullName)

# Disconnect from cluster or host
connect.Disconnect(my_cluster)

