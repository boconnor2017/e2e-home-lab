#!/usr/bin/python
# NOTE: WORK IN PROGRESS

from pyVim import connect
import sys

numOfArgs = len(sys.argv)

def getvmconfig(hostIP, hostPass, vmIP):
  print("Host IP: " + hostIP + ", Host Password: " + hostPass + ", VM IP: " + vmIP)
  my_cluster = connect.ConnectNoSSL(hostIP, 443, "root", hostPass)
  searcher = my_cluster.content.searchIndex
  vm = searcher.FindByIp(ip=vmIP, vmSearch=True)
  print("VM Config Details for " + vmIP)
  print(vm.config.name)
  print(vm.config.guestFullName)

  # Disconnect from cluster or host
  connect.Disconnect(my_cluster)



if numOfArgs == 1:
   print("You haven't passed any parameters, type get-vm-config --help for syntax")

if numOfArgs == 2:
   if sys.argv[1] == "--help":
      print("get-vm-config <host ip> <host password> <vm ip>")
   else:
      print("Missing parameters, type get-vm-config --help for syntax")

if numOfArgs == 3:
   print("Missing parameters, type get-vm-config --help for syntax")

if numOfArgs == 4:
   getvmconfig(sys.argv[1], sys.argv[2], sys.argv[3])

if numOfArgs > 4:
  print("Too many parameters")

