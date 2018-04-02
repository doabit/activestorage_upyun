# ActivestorageUpyun
Upyun service for activestorage.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activestorage_upyun'
```

Set up upyun storage service in config/storage.yml:

```yml
upyun:
  service: Upyun
  bucket: <%= ENV['UPYUUN_BUCKET'] %>
  operator: <%= ENV['UPYUUN_OPERATOR'] %>
  password: <%= ENV['UPYUUN_PASSWORD'] %>
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
<%= image_tag @user.avatar.service_url((filename: 'x-upyun-process=!webpw200')) %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
