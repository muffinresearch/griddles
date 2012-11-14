COMPASS=/usr/bin/compass

compass-watch:
	$(COMPASS) watch -c config/compass/debug.rb

release: compass-min compass-debug compass-expanded

compass-min:
	$(COMPASS) compile -c config/compass/min.rb

compass-debug:
	$(COMPASS) compile -c config/compass/debug.rb

compass-expanded:
	$(COMPASS) compile -c config/compass/expanded.rb

clean:
	rm -fr css/*

.PHONY: compass-watch release compass-min compass-debug compass-expanded clean

.NOTPARALLEL:
