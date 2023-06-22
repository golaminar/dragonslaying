.PHONY: test
test: vendor/bundle
	bundle exec rspec spec/story_specs.rb
vendor/bundle: .bundle/config
	bundle install
.bundle/config:
	bundle config set --local path 'vendor/bundle'

.PHONY: clean
clean:
	rm -r .bundle vendor
