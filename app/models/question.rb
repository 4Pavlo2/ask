class Question < ApplicationRecord
  validates :title, presence: true, length: {minimum:2, maximum:40}
  validates :body, presence: true, length: {minimum:2, maximum:4000}
end40