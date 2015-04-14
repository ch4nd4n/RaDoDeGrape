require 'doorkeeper/grape/helpers'
module Zinger
  class API < Grape::API
    helpers Doorkeeper::Grape::Helpers
    version 'v1', using: :header, vendor: 'zinger'
    format :json
    prefix :api

    before do
      doorkeeper_authorize!
    end

    resource :statuses do
      get :users do
        {user: User.first}
      end
    end
  end
end
