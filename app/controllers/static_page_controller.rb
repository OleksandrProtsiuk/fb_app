class StaticPageController < ApplicationController
  http_basic_authenticate_with name: "1", password: "1", except: [:home, :about]

  def index
  end

  def home
  end

  def about
  end
end
