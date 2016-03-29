require 'net_http_ssl_fix/version'

module NetHttpSslFix
  # Local certificate authority file.
  LOCAL_CA_FILE = File.expand_path('../../data/cacert.pem', __FILE__)
end

require 'core_extensions/net/http'
