PREFIX ?= /usr

all: clean ye

install: ye
	mkdir -p $(PREFIX)/bin
	install -m 0755 ye $(PREFIX)/bin/ye

uninstall:
	rm -f $(PREFIX)/bin/ye


gdb: clean ye.out
	gdb --args ./ye.out abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz

lldb: clean ye.out
	lldb ./ye.out abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz

ye:
	gcc -o ye ye.c

ye.out:
	gcc -o ye.out ye.c -Wall -g

clean:
	rm -f ye ye.out

.PHONY: all gdb clean install uninstall
