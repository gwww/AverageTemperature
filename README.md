# AverageTemperature

A gem for use in training around TDD and A-TDD practices. The code is meant to
be purposefully not the best so to elicit discussion on how it affects trying
to add tests.

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
AverageTemperature.get_temperature( location, month ) 
```

`location` (using the supplied data) is properly capitalized state name; 
e.g.: "New York". `month` is an integer, 0
for January, 11 is December. 12 is yearly average.

You may supply your own temperature data if you wish using:
```
AverageTemperature.initialize( weather_data_file )
```
Each line of the `weather_data_file` must contain a location in alpha format (space OK too) 
followed by 13 temperature data points. Each data point is a floating point number, e.g.: 54.236

## Contributing

1. Fork it ( https://github.com/[my-github-username]/average_temperature/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
