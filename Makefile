PREFIX ?= /usr

all: clean ye

clean:
	rm -f ye ye.out

install: ye
	mkdir -p $(PREFIX)/bin
	install -m 0755 ye $(PREFIX)/bin/ye

uninstall:
	rm -f $(PREFIX)/bin/ye

ye:
	$(CC) -o ye ye.c

ye.out:
	$(CC) -o ye.out ye.c -Wall -g

.PHONY: all clean install uninstall
