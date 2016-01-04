module TestApi
  class API < Grape::API
    version 'v1'
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    prefix :api
    get '/' do
      'Hello Rails'
    end

    get '/users' do
      @users = User.all
    end
  end
end
