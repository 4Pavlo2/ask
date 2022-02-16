class Question < ApplicationRecord
  validates :title, presence: true, length: {minimum:2, maximum:40}
  validates :body, presence: true, length: {minimum:2, maximum:4000}

  def formatted_created_at
    self.created_at.strftime('%Y-%m-%d %H:%M:%S')
  end
end