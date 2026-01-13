ldconfig
# intentionally redirect output to avoid noise in the terminal
LIBSUFFIX=""
if libtool --features | grep host | grep -q 64; then
	LIBSUFFIX="64"
fi

libtool --finish /usr/lib${LIBSUFFIX} > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/sssd > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/sssd/modules > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/cifs-utils > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/krb5/plugins/libkrb5 > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/libnfsidmap > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/security > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/samba/idmap > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/python3.12/site-packages > /dev/null
libtool --finish /usr/lib${LIBSUFFIX}/ldb > /dev/null

chmod 700 -R /etc/sssd
chmod 600 /etc/sssd/sssd.conf
chmod 700 /usr/sbin/sssd

