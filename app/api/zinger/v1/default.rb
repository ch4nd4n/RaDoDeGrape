require 'doorkeeper/grape/helpers'
module Zinger
  module V1
    class Default < Grape::API
      helpers Doorkeeper::Grape::Helpers
      version 'v1', using: :header, vendor: 'zinger'
      format :json
      prefix :api

      before do
        header['Access-Control-Allow-Origin'] = '*'
        header['Access-Control-Request-Method'] = '*'
      end

      helpers do
        def logger
          API.logger
        end
        def current_token
          doorkeeper_token.nil? ? nil : doorkeeper_token.token
        end
        
        def current_user
          doorkeeper_token.nil? ? nil : User.find(doorkeeper_token.resource_owner_id)
        end

        def current_scopes
          doorkeeper_token.nil? ? nil : doorkeeper_token.scopes
        end
      end
      
      mount Zinger::V1::API
    end
  end
end
