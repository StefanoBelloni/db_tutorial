db: src/db.c bin
	gcc -g -O0 -std=c99 src/db.c -o bin/db

bin:
	mkdir -p bin

res:
	mkdir -p res

run: db res
	./bin/db res/mydb.db

clean:
	rm -f bin/db res/*.db

test: db
	bundle exec rspec

format: *.c
	clang-format -style=Google -i *.c
