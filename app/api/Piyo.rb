module Piyo
  class API < Grape::API

    format :json

    resource :api do

      desc "Return piyo."
      get :piyo do
        "piyo" #とりあえずテキトーなものを返す
      end

      desc "twice echo."
      params do
        requires :str, type: String, desc: "twice str"
      end
      get :twice do
        params[:str] * 2
      end

    end
  end
end
