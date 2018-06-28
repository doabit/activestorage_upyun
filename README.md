# ActivestorageUpyun
Upyun service for activestorage.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activestorage_upyun', require: false
```

Set up upyun storage service in config/storage.yml:

```yml
upyun:
  service: Upyun
  bucket: <%= ENV['UPYUN_BUCKET'] %>
  operator: <%= ENV['UPYUN_OPERATOR'] %>
  password: <%= ENV['UPYUN_PASSWORD'] %>
  host: <%= ENV['UPYUN_HOST'] %>
  folder: <%= ENV['UPYUN_FOLDER'] %>
```

Set up activestorage service:

```ruby
config.active_storage.service = :upyun
```

Use for image url

```erb
<%= image_tag @user.avatar.service_url %>
```

Or add thumb version named `webpw200`

```erb
<%= image_tag @user.avatar.service_url(params: {process: 'webpw200'}) %>
```

thumb version use `!` as default identifier, if you want to use `_` as identifier, you can add `identifier` option

```yml
upyun:
  service: Upyun
  bucket: <%= ENV['UPYUN_BUCKET'] %>
  operator: <%= ENV['UPYUN_OPERATOR'] %>
  password: <%= ENV['UPYUN_PASSWORD'] %>
  host: <%= ENV['UPYUN_HOST'] %>
  folder: <%= ENV['UPYUN_FOLDER'] %>
  identifier: _
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
