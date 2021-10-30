default: up

up:
	docker compose up

# auto restart with new files too
entr-web:
	while true; do \
	  find src config -type f | \
	  entr -nrd \
		bundle exec rackup \
		-o 0.0.0.0 -p 8080 \
		src/server.rb \
	  ; \
	done

# remove -A for rubocop if you do not want auto-corrections
# or create a new target to just run tests
# (e.g.: in a CI setup)
auto-test:
	bundle exec rubocop -A
	bundle exec rspec

# auto-correct your code and run tests when you make changes to any files
entr:
	find src/ spec/ -type f | entr -ds 'make auto-test'

# run above in a docker container if you don't have ruby & tools installed
dentr:
	docker compose run web make entr
