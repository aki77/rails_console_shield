# RailsConsoleShield

Make your production rails console more secure!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_console_shield'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_console_shield

## Usage

Set the production console to sandbox mode by default.\
To disable it, run it with the --no-sandbox option.

```
bin/rails console --no-sandbox
```

![Demo](https://i.gyazo.com/a92364252211e4a9bb6be08da6456f0e.png)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsConsoleShield project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/aki77/rails_console_shield/blob/master/CODE_OF_CONDUCT.md).

## Acknowledgements

This is a lite and refactored version of [safer_rails_console](https://github.com/salsify/safer_rails_console)
