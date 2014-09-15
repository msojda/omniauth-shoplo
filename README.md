[![Build Status](https://travis-ci.org/msojda/omniauth-shoplo.svg?branch=master)](https://travis-ci.org/msojda/omniauth-shoplo)

# OmniAuth Shoplo strategy

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-shoplo'
```

Then add the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shoplo, ENV['APP_KEY'], ENV['APP_SECRET']
end
```