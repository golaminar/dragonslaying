.PHONY: test
test: vendor/bundle
	bundle exec rspec spec/story_specs.rb

vendor/bundle: .bundle/config
	bundle install

.bundle/config:
	bundle config set --local path 'vendor/bundle'

# THESE ARE REALLY BRITTLE AND WILL BREAK IF LINE NUMBERS CHANGE IN THE SPEC FILE
vonnegut:
	sed -i '38,45s/#//' spec/story_specs.rb

unvonnegut:
	sed -i '38,45s/^/#/' spec/story_specs.rb

.PHONY: clean
clean: unvonnegut
	rm -r .bundle vendor
