module Test
  module V2
    class API < Grape::API

      format :json

      resource :api do # [tutes mount]/api となる。空もOK

        desc "Return Hello"
        get :hello do # [tutes mount]/api/hello となる
          @messages = [{message: "Hello Grape with Entity"}]
          present @messages, with: Entities::V1::UserEntity # [path]/entities/v1/user_entity を利用する
        end

        desc "Hello Name"
        params do
          requires :name, type: String, desc: "twice str"
        end
        get :name do
          {message: 'Hello ' + params[:name]}
        end

      end
    end
  end
end
