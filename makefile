TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")

run: build
	./oplang-temp main.op oplang
	rm -rfv oplang-temp
	cp oplang ./backup/oplang-$(TIMESTAMP)
build: 
	./oplang main.op oplang-temp
