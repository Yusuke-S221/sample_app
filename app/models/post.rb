class Post < ApplicationRecord
  validates :title, {presence: true, length: {maximum: 50}}
  validates :content, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
