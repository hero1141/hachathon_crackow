class Message < ApplicationRecord
  belongs_to :receiver, class_name: 'User'
  belongs_to :sender, class_name: 'User'

  def self.current_chat(user, user2)
    where(sender_id: user, receiver_id: user2) + where(sender_id: user2, receiver_id: user)
  end

end
