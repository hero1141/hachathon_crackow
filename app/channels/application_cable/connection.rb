# app/channels/application_cable/connection.rb
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
    def session
      cookies.encrypted[Rails.application.config.session_options[:key]]
    end
    def connect
      self.current_user = User.find_by(id: session['warden.user.user.key'][0][0])
    end
  end
end
