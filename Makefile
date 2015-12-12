TARGETS += 99hdparm

prefix = $(DESTDIR)/etc/pm/sleep.d

INSTALLED_TARGETS = $(addprefix $(prefix)/,$(TARGETS))

all: $(TARGETS)

install:
	mkdir -p $(prefix)
	cp $(TARGETS) $(prefix)/
	chmod 0755 $(INSTALLED_TARGETS)

uninstall:
	$(RM) $(INSTALLED_TARGETS)

clean:
	$(RM) $(TARGETS) *.o

.PHONY: clean install uninstall
