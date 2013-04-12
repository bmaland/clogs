# Clogs

Sample engine for a workshop on
[Maintainable Ruby on Rails](https://github.com/bmaland/kds_rails_ws).

## Installation

In your Rails app's `Gemfile`:

`gem 'glogs', path: '/path/to/this/folder'`

In your app's `config/routes.rb`:

`mount Clogs::Engine => '/clogs'`

Then run:

```
bundle install
bundle exec rake clogs:install:migrations
bundle exec rake db:migrate
```

Now you should be able to see something at `http://localhost:3000/clogs`.
