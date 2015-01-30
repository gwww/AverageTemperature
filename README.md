# AverageTemperature

A gem for use in training around TDD and A-TDD practices.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'average_temperature'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install average_temperature

## Usage

```

require 'average_temperature'

AverageTemperature.get_temperature( state, month ) 

state is properly capitalized state name; e.g.: "Ohio". month is an integer, 0
is January, 11 is December. 12 is yearly average.

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/average_temperature/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
