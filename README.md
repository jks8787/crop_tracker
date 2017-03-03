# CropTracker

TODO: describe gem

## Installation

install it by:

    $ gem install crop_tracker

## Usage

TODO: instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Notes
1. install bundler
2. `bundle gem name_of_gem`
3. `cd name_of_gem/`
4. update gemspec to be valid
5. `bundle install`
6. add code to `lib/crop_tracker.rb`
7. adding `crop_tracker` file to `/bin`
8. updating gemspec to look for `bin/crop_tracker`
9. adding code to `bin/crop_tracker` to call the new code in `crop_tracker.rb`
9. `rake install`
10. `crop_tracker`, and the output should be `my output!`
11. add a Crop class, which will serve as my 'record'
12. add an InputParser class, which will contain the work of parsing
13. add tests for the classes and the intro message
