TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")

run: build
	./oplang main.op oplang
build: clean
	mv oplang oplang-temp
	./oplang-temp main.op oplang
	rm -rfv oplang-temp
clean:
	cp oplang ./backup/oplang-$(TIMESTAMP)
