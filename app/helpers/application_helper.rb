module ApplicationHelper

  def friends
    if current_user
      graph = Koala::Facebook::API.new(ENV["MY_TOKEN"])
      f = graph.get_connections("me", "friends")
    else
      f = 'Ups !.. U forgot to log in...'
    end
    f
  end

end
