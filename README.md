# Sinatra::Errorcodes
[![Gem Version](https://badge.fury.io/rb/sinatra-errorcodes.svg)](https://badge.fury.io/rb/sinatra-errorcodes)
[![CircleCI](https://circleci.com/gh/IzumiSy/sinatra-errorcodes.svg?style=shield)](https://circleci.com/gh/IzumiSy/sinatra-errorcodes)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![Dependency Status](https://gemnasium.com/badges/github.com/IzumiSy/sinatra-errorcodes.svg)](https://gemnasium.com/github.com/IzumiSy/sinatra-errorcodes)
> Gem of HTTP error status code class pack

## Table of Contents
- [Installation](README.md#Installation)
- [Usage](README.md#Usage)
- [Example](README.md#Example)
- [Test](README.md#Test)
- [Contribute](README.md#Contribute)
- [License](README.md#License)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'sinatra-errorcodes'
```

Or install it yourself as:
```bash
$ gem install sinatra-errorcodes
```

## Usage
To use this gem, at first, you need to register `Sinatra::Errorcodes` in your configure block and call `handle_errorstatus` which wraps Sinatra's error handling block. 
```ruby
class AppController < Sinatra::Base
  configure do
    register Sinatra::Errorcodes
    
    handle_errorstatus # Need to add this.
  end
end
```

Now you can use a set of `HTTPError` class in order to halt manually with a specific HTTP status code and its message like below. The all process of these exception raising is done by `handle_errorstatus` you have just added above.
```ruby
...

  get '/badrequest'
    raise HTTPError::BadRequest
  end
  
  get '/error'
    raise HTTPError::InternalServerError
  end
  
  # You can also raise an exception with your own custom message.
  get '/custom'
    raise HTTPError::InternalServerError, 'Custom error message'
  end
  
...
```

## Example
Install gems
```bash
$ bundle install
```

and run it
```bash
$ cd example
$ bundle exec rackup -p 3000
```

## Test
```bash
$ bundle exec rake spec
```

## Contribute
PRs accepted.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

