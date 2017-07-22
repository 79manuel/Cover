class Review < ApplicationRecord

  belongs_to :user_by, foreign_key: "user_by", class_name: "User"
  belongs_to :user_about, foreign_key: "user_about", class_name: "User", inverse_of: :reviews_about

  # validates :user, presence: true
  validates :user_by, presence: true
  # TODO this was trying to do something importantish
  #validates :user, uniqueness: { scope: :user_by }
  validates :comment, presence: true
  validates :rating, presence: true , 
                     numericality: {
                     greater_than: 0, 
                     less_than_or_equal_to: 5
                     }

end