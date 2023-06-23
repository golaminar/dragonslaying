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

cummings:
	sed -i '47,49s/#//' spec/story_specs.rb

uncummings:
	sed -i '47,49s/^/#/' spec/story_specs.rb

gatsby:
	sed -i '51,54s/#//' spec/story_specs.rb

ungatsby:
	sed -i '51,54s/^/#/' spec/story_specs.rb

moby:
	sed -i '56,60s/#//' spec/story_specs.rb

unmoby:
	sed -i '56,60s/^/#/' spec/story_specs.rb

.PHONY: clean
clean: unvonnegut uncummings ungatsby unmoby
	rm -rf .bundle vendor
