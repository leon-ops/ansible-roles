resource drbd0 {
	protocol C;
	disk /dev/sdb1;
	device /dev/drbd0;
	meta-disk internal;
	on drbd1 {
		address 172.16.0.1:7789;
	}
	on drbd2 {
		address 172.16.0.2:7789;
	}
}
