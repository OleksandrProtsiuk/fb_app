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

  def send_message
    a = Mechanize.new
    a.get('https://www.facebook.com/messages/t/100014458980881')
    [a.current_page.title, a.current_page.uri, a.current_page.form.name, a.current_page.links]
  end

end
