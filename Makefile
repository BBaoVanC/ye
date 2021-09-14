PREFIX ?= /usr

all: ye

clean:
	rm -f ye ye.out

install: ye
	mkdir -p $(PREFIX)/bin
	install -m 0755 ye $(PREFIX)/bin/ye

uninstall:
	rm -f $(PREFIX)/bin/ye

ye: ye.c
	$(CC) $(CFLAGS) -o ye ye.c

ye.out:
	$(CC) $(CFLAGS) -o ye.out ye.c -Wall -g

.PHONY: all clean install uninstall
