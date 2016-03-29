class FezinhaRecord < ActiveRecord::Base
  belongs_to :user

  def self.latest
    order(id: :desc).limit(User.count)
  end
end
