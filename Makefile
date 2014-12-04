CC = clang
PREFIX = /usr/local

.PHONY: all install clean

all: iosdevice

iosdevice: iosdevice.m iosdevice.h
	$(CC) -Wall -fobjc-arc -o iosdevice -framework CoreFoundation -framework Cocoa -framework MobileDevice -F /System/Library/PrivateFrameworks iosdevice.m

install: iosdevice
	install -d ${PREFIX}/bin
	install iosdevice ${PREFIX}/bin

clean:
	rm -rf iosdevice
