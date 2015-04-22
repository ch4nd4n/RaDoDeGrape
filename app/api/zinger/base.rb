module Zinger
  class Base < Grape::API
    mount Zinger::V1::Default
  end
end
