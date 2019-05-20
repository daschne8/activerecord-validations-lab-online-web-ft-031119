class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validates :summary, length: {maximum: 15}
  validates :validate_category
  def validate_category
    if !["Fiction"].include(:category)
      errors.add(:category, :invalid)
    end
  end

end
