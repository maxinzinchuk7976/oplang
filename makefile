TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")

run: build
	./oplang-temp main.op oplang
	rm -rfv oplang-temp
	cp oplang ./backup/oplang-$(TIMESTAMP)
build: 
	./oplang main.op oplang-temp

test: op1
	./op1 main.op op2
	./op2 main.op op1
	rm -fv op1 op2

test-a: op1
	./op1 main.op op2
	./op2 main.op op1

op1:
	./oplang main.op op1
	
