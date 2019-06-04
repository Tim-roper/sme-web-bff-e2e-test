# frozen_string_literal: true

require 'net/http'

RSpec.describe 'customer returns' do
  let(:base_url) { '/1234/customerReturn' }
  let(:port) { '5000' }
  let(:host_name) { 'localhost' }
  describe 'load endpoint' do
    it 'returns 200 when the URL is hit' do
      response = Net::HTTP.get_response(host_name,
                                        "#{base_url}/load_customer_return_list",
                                        port)
      expect(response.code).to eq('200')
    end
  end
  describe 'filter endpoint' do
    it 'returns 200 when the URL is hit' do
      response = Net::HTTP.get_response(host_name,
                                        "#{base_url}/filter_customer_return_list",
                                        port)
      expect(response.code).to eq('200')
    end
  end
end