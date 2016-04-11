$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'net_http_ssl_fix/version'

Gem::Specification.new do |s|
  s.name          = 'net_http_ssl_fix'
  s.version       = NetHttpSslFix::VERSION
  s.summary       = 'Community-updated Net::HTTP certificate authority file hack. Very useful for authoring HTTP clients that must run on Ruby + Windows.'
  s.description   = 'Get rid of this lovely error for good, especially on Windows: `SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed`'
  s.authors       = ['Chris Peters']
  s.email         = 'chris@minimalorange.com'
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/liveeditor/net_http_ssl_fix'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rake',  '~> 11.1.2'
  s.add_development_dependency 'rspec', '~> 3.4.0'
end
