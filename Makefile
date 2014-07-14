.PHONY: rel deps doc

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
