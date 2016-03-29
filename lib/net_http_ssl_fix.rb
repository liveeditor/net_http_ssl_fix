require 'net_http_ssl_fix/version'
require 'core_extensions/net/http'

module NetHttpSslFix
  # Local certificate authority file.
  LOCAL_CA_FILE = File.expand_path('../../data/cacert.pem', __FILE__)
end

# Include our monkey patch to load certificate authority PEM file.
Net::HTTP.include CoreExtensions::Net::HTTP
