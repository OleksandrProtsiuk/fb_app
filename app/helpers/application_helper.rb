module ApplicationHelper

  def friends
    if current_user
      graph = Koala::Facebook::API.new(ENV["MY_TOKEN"])
      f = graph.get_connections("me", "friends")
      f == [] ? f = 'Something went wrong' : f
    else
      f = 'Ups !.. U forgot to log in...'
    end
    f
  end

end
