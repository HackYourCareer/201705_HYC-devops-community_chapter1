First steps with vagrant:

1. deploy 3 VMs using Vagrantfile - `vagrant up`
2. All VMs come with some basic networking tools like: netfilter (iptables), tcpdump, arping, netcat
3. Try to (ar)ping one VM from another (`arping -i eth1 10.30.30.103`)
3. Observe network traffic with tcpdump (`tcpdump -i eth1 -vvn`)
4. Use netcat to copy some data between nodes
5. Try to use iptables to cut communication between nodes. Observer effect in tcpdump.