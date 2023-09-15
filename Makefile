.PHONY: test
test: vendor/bundle
	bundle exec rspec spec/story_specs.rb

vendor/bundle: .bundle/config
	bundle install

.bundle/config:
	bundle config set --local path 'vendor/bundle'

# THESE ARE REALLY BRITTLE AND WILL BREAK IF LINE NUMBERS CHANGE IN THE SPEC FILE
vonnegut:
	sed -ig '40,47s/#//' spec/story_specs.rb

unvonnegut:
	sed -ig '40,47s/^[^#]/#/' spec/story_specs.rb

cummings:
	sed -ig '49,51s/#//' spec/story_specs.rb

uncummings:
	sed -ig '40,51s/^[^#]/#/' spec/story_specs.rb

gatsby:
	sed -ig '53,56s/#//' spec/story_specs.rb

ungatsby:
	sed -ig '53,56s/^[^#]/#/' spec/story_specs.rb

moby:
	sed -ig '58,62s/#//' spec/story_specs.rb

unmoby:
	sed -ig '58,62s/^[^#]/#/' spec/story_specs.rb

rgb:
	sed -ig '64,66s/#//' spec/story_specs.rb

unrgb:
	sed -ig '64,66s/^[^#]/#/' spec/story_specs.rb

.PHONY: clean
clean: unvonnegut uncummings ungatsby unmoby unrgb
	rm -rf .bundle vendor
