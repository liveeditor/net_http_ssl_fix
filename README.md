# Net::HTTP SSL Fix Ruby Gem

[![Build Status](https://secure.travis-ci.org/liveeditor/net_http_ssl_fix.svg?branch=master)](http://travis-ci.org/liveeditor/net_http_ssl_fix)

A Community-updated `Net::HTTP` certificate authority file hack. Very useful for
authoring Ruby-based HTTP clients that must run on Windows.

Get rid of this lovely error for good, especially on Windows:

```
SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed
```

No more `/ (╯°□°）╯︵ ┻━┻`!

This gem basically configures Net::HTTP to use a
[certificate authority PEM file][2] downloaded from the cURL project and
included directly into the gem. This requires that you periodically update this
gem as we do.

## Installation

Add to your `Gemfile`:

```ruby
gem 'net_http_ssl_fix', require: 'net_http_ssl_fix'
```

Then run `bundle install`.

No more :cry:.

## Updating the `cacert.pem`

Every now and then, you may get the `SSL_connect` error again, especially if you
don't make any attempts to update your install of this gem.

In the event that this gem isn't updated with the latest `cacert.pem` from the
cURL project, you can submit a pull request with the file at `data/cacert.pem`
replaced with a freshly-downloaded version from this URL:

```
https://curl.haxx.se/ca/cacert.pem
```

## Credit Where Credit Is Due

This tiny gem is indebted to John Bachir, particularly his Earth-shattering
Gist, [How to set the certificate file for Net::HTTP library-wide][1].


## License

The MIT License (MIT)

Copyright (c) 2016-2018 Minimal Orange, LLC

[1]: https://gist.github.com/jjb/996510
[2]: https://curl.haxx.se/ca/cacert.pem
