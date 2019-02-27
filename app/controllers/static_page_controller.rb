class StaticPageController < ApplicationController
  http_basic_authenticate_with name: "1", password: "1", except: [:home, :about]

  def index
    if current_user
      redirect home_url
    else
      'ok'
    end
  end

  def home
  end

  def about
  end
end
