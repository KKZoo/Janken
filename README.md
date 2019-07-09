# Janken
This is a gem for playing rock-paper-scissors.

※The output is in Japanese.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'janken'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install janken

## Usage

### Standard operation of rock-paper-scissors.

```ruby
require "janken"

Janken.judge("PatternA","PatternB","PlayerNameA","PlayerNameB")
```

`Pattrern` can be input as `rock`,`sissior`,`paper`.

**Example**

```ruby
Janken.judge("rock","rock","Hanako","Taro")
# output => "あいこ"
```

### Play alone mode.

```ruby
require "janken"

OnePlayer.janken("Pattern")
```

`Pattern` can be input as `rock`,`sissior`,`paper`.

**Example**

```ruby
OnePlayer.janken("rock")
```

Well, if you want to know that "pattern" CPU is out, write the following command after the above command.

```ruby
OnePlayer.read_save
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/janken. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Janken project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/janken/blob/master/CODE_OF_CONDUCT.md).
