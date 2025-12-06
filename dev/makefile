TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")


run: build
	./oplang-1.0.1 test.op test
build: clean
	./oplang main.op oplang-1.0.1
clean:
	rm -rfv oplang-1.0.1