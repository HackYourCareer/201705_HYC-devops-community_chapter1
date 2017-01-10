# # Update the box
rm -rf /var/lib/apt/lists/*
touch /etc/apt/x

rm -rf /etc/apt/sources.list
mv /etc/apt/x /etc/apt/sources.list

echo "deb http://ftp.pl.debian.org/debian/ jessie main contrib non-free
deb http://security.debian.org/ jessie/updates main contrib non-free 
deb http://ftp.pl.debian.org/debian/ jessie-proposed-updates main contrib non-free" | sudo tee --append /etc/apt/sources.list.d/stable.list > /dev/null

echo "deb http://ftp.pl.debian.org/debian/ stretch main contrib non-free 
deb http://security.debian.org/ stretch/updates main contrib non-free 
deb http://ftp.pl.debian.org/debian/ stretch-proposed-updates main contrib non-free " | sudo tee --append /etc/apt/sources.list.d/testing.list > /dev/null

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" | sudo tee --append /etc/apt/sources.list.d/virtualbox.list > /dev/null

touch /etc/apt/preferences.d/700-testing
echo "Package: *
Pin: release a=testing
Pin-Priority: 700
Explanation: other testing-proposed-updates, testing/updates" | sudo tee --append /etc/apt/preferences.d/700-testing > /dev/null

touch /etc/apt/preferences.d/900-stable
echo "Package: *
Pin: release a=stable
Pin-Priority: 900
Explanation: other jessie-proposed-updates, stable/updates, stable/volatile" | sudo tee --append /etc/apt/preferences.d/900-stable > /dev/null


# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config
