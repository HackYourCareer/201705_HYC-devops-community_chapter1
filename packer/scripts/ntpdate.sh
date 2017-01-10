touch /etc/default/x
cat <<EOF > /etc/default/x
# The settings in this file are used by the program ntpdate-debian, but not
# by the upstream program ntpdate.

# Set to "yes" to take the server list from /etc/ntp.conf, from package ntp,
# so you only have to keep it in one place.
NTPDATE_USE_NTP_CONF=no

# List of NTP servers to use  (Separate multiple servers with spaces.)
# Not used if NTPDATE_USE_NTP_CONF is yes.
NTPSERVERS="time1.fra.hybris.com time2.fra.hybris.com"

# Additional options to pass to ntpdate
NTPOPTIONS=""

EOF
#mv /etc/default/ntpdate /etc/default/ntpdate.old
mv /etc/default/x /etc/default/ntpdate 

touch /etc/cron.daily/ntpdate
cat <<EOF > /etc/cron.daily/ntpdate
#!/bin/sh

/usr/sbin/ntpdate-debian > /dev/null

EOF
