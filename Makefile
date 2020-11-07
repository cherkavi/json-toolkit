all : json-diff json-empty

json-diff : json-diff.go
	go fmt json-diff.go
	go build json-diff.go

json-empty : json-empty.go
	go fmt json-empty.go
	go build json-empty.go

clean :
	rm json-diff json-empty 2> /dev/null || true

lint:
	./run-linter

fmt :
	./run-formatter

test :
	./run-all-tests

install : all
	install binary-to-json /usr/local/bin
	install csv-to-json /usr/local/bin
	install dsv-to-json /usr/local/bin
	install json-cat /usr/local/bin
	install json-dicts-to-table /usr/local/bin
	install json-diff /usr/local/bin
	install json-empty /usr/local/bin
	install json-format /usr/local/bin
	install json-sql /usr/local/bin
	install json-table-to-dicts /usr/local/bin
	install json-to-binary /usr/local/bin
	install json-to-csv /usr/local/bin
	install json-to-dsv /usr/local/bin
	install json-to-logfmt /usr/local/bin
	install json-to-plot /usr/local/bin
	install json-to-xml /usr/local/bin
	install json-to-yaml /usr/local/bin
	install logfmt-to-json /usr/local/bin
	install python-to-json-ast /usr/local/bin
	install xml-to-json /usr/local/bin
	install yaml-to-json /usr/local/bin
