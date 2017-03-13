Playing with provisioning and shared folder:

1. deploy default VM using Vagrantfile - `vagrant up`
2. check if port forwarding is working (http://localhost:8080)
3. modify Nginx welcome page in Vagrantfile root
4. modify provision script and reprovision `vagrant provision`
* replace nginx with apache (remove nginx package or stop the service in provision script)
5. stop VM
