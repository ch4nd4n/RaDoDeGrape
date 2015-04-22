module Zinger
  module V1
    class API < Zinger::V1::Default
      # before do
      #   doorkeeper_authorize!
      # end

      resource :statuses do
        get :users do
          logger.info params[:access_token]
          User.all
        end

        get :verify_credentials do
          current_user
        end
      end
    end
  end
end
