require 'spec_helper'

describe OmniAuth::Strategies::Shoplo do
  subject do
    OmniAuth::Strategies::Shoplo.new({})
  end

  context 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('shoplo')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('http://api.shoplo.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_path).to eq('/services/oauth/authorize')
    end

    it 'should have correct access token url' do
      expect(subject.options.client_options.access_token_path).to eq('/services/oauth/access_token')
    end

    it 'should have correct request token url' do
      expect(subject.options.client_options.request_token_path).to eq('/services/oauth/request_token')
    end
  end
end