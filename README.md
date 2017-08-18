# debootstrap-host-virtenv
Rolling out a similar to a host virtual environment for chrooting and testing applications e.g. webservers

Get the newest debootstrap (as for 08/14/2017) and install it:

* wget http://archive.ubuntu.com/ubuntu/pool/main/d/debootstrap/debootstrap_1.0.91ubuntu1_all.deb
* sudo dpkg --install debootstrap_1.0.91ubuntu1_all.deb && rm -rf debootstrap_1.0.91ubuntu1_all.deb

After you bootstrapped fresh environemnt login into chroot as

* schroot -c chroot:xenial_x86-64 -u root

\* before doing that copy schroot-xenial_x86-64.conf into /etc/shcroot/chroot.d with sudo

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
??? below might be extra step which is useless (potentially)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\* ./configure 	--prefix=/srv/chroot/xenial_x86-64 --exec-prefix=/srv/chroot/xenial_x86-64 \
		--includedir=/srv/chroot/xenial_x86-64/usr/include

!!!
CAUTION: do not use fakeroot for chroot installations - use real chroots with root access rights!
