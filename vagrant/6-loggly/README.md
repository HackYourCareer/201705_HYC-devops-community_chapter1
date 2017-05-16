First steps with vagrant:

1. deploy default VM using Vagrantfile - `vagrant up`
2. log-in to this VM - `vagrant ssh` or use `putty`
3. configure loggly on VM

```bash
curl -O https://www.loggly.com/install/configure-apache.sh
sudo bash configure-apache.sh -a warx -t b9a9a0d4-f576-49c4-86ca-fbf89ae98c35 -u artur -p Warsztaty2
```

4. Go to http://localhost:6040/ to generate some traffic
5. Go to loggly webpage to play with graphs http://warx.loggly.com/ u: artur p: Warsztaty2
