.PHONY: all app rel deps doc 

./ebin/riakhttpc.app: src/*/*.erl include/*.hrl
	./rebar compile

all: deps app
	@./rebar compile

deps:
	@./rebar get-deps

clean:
	@./rebar clean

app: deps ./ebin/riakhttpc.app

distclean: clean
	@./rebar delete-deps

doc:
	@./rebar doc skip_deps=true
