.PHONY: all
all: hello_docker

hello_docker: main.c.o
	gcc $^ -o $@

main.c.o: main.c
	gcc -c $^ -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f hello_docker

.PHONY: docker
docker:
	docker build -t cdocker/hello .
	docker run cdocker/hello
