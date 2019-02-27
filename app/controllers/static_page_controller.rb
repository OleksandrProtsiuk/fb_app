class StaticPageController < ApplicationController
  http_basic_authenticate_with name: "1", password: "1", except: [:home, :about]

  def index
    if current_user
      redirect_to home_path
    else
      'ok'
    end
  end

  def home
    #if current_user
     # @graph = Koala::Facebook::API.new(access_token)
      #@friends = @graph.get_connections("me", "friends")
    #else
     # @friends = 'Ups !.. U forgot to log in...'
    #end
  end

  def about
  end
end
