module TestApi
  class API < Grape::API
    require 'grape/active_model_serializers'
    include Grape::ActiveModelSerializers
    version 'v1'
    format :json
    prefix :api
    get '/' do
      'Hello Rails'
    end

    get '/users' do
      @users = User.all
    end
  end
end
