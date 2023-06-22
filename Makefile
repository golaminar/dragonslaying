.PHONY: test
test: vendor/bundle
	bundle exec rspec
vendor/bundle: .bundle/config
	bundle install
.bundle/config:
	bundle config set --local path 'vendor/bundle'

.PHONY: clean
clean:
	rm -r .bundle vendor
