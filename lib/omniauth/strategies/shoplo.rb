require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Shoplo < OmniAuth::Strategies::OAuth

      option :name, 'shoplo'

      option :client_options, {
        :site => 'http://api.shoplo.com',
        :authorize_path => '/services/oauth/authorize',
        :access_token_path => '/services/oauth/access_token',
        :request_token_path => '/services/oauth/request_token'
      }

      uid { raw_info['id'] }

      info do
        {
          :id   => raw_info['id'],	
          :name   => raw_info['name'],
          :domain => raw_info['domain'],
        }
      end

      extra do
        {
          'raw_info' => raw_info['shop']
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/services/shop').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end