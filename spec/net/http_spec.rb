require 'net_http_ssl_fix'

RSpec.describe Net::HTTP do
  let(:http) { Net::HTTP.new('https://example.com/') }
  before { http.use_ssl = true }

  it 'uses the bundled CA file' do
    expect(http.ca_file).to eql File.expand_path('../../../data/cacert.pem', __FILE__)
  end

  it 'verifies peer' do
    expect(http.verify_mode).to eql OpenSSL::SSL::VERIFY_PEER
  end
end
