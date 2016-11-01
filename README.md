# Geartrain

> Modern asset pipelines for rails

Geartrain is a drop-in replacement for Sprockets that adds a [Brunch](http://brunch.io) based asset pipeline to your Rails projects.


## Installation

Modify your application's Gemfile:

```ruby
gem 'geartrain'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geartrain

Once that's done, you can install geartrain using:

    $ rails g geartrain:install


## Disabling sprockets

When adding geartrain to an existing Rails app, you'll need o disable sprockets. First, modify `application.rb` so that the line that reads

    require "rails"

is replaced by

    require "rails"
    # Pick the frameworks you want:
    require "active_model/railtie"
    require "active_job/railtie"
    require "active_record/railtie"
    require "action_controller/railtie"
    require "action_mailer/railtie"
    require "action_view/railtie"
    require "action_cable/engine"
    # require "sprockets/railtie"
    require "rails/test_unit/railtie"

Then, remove asset pipeline related gems from the Gemfile. The following are added in a new rails app:

    gem 'sass-rails', '~> 5.0'
    gem 'uglifier', '>= 1.3.0'
    gem 'coffee-rails', '~> 4.2'
    gem 'therubyracer', platforms: :ruby
    gem 'turbolinks', '~> 5'


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gear-train/gear-train.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

