module Test
  class API < Grape::API

    format :json

    resource :api do

      desc "Return Hello"
      get :hello do
        {message: "Hello Grape"}
      end

      desc "Hello Name"
      params do
        requires :name, type: String, desc: "twice str"
      end
      get :twice do
        {message: 'Hello ' + params[:name]}
      end

    end
  end
end
