class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups

  # - must have a `name`
  validates :name, presence: true 

  # - must have an `age` between 8 and 18
  validates :age, numericality: { greater_than_or_equal_to:  8, less_than_or_equal_to: 18}



  def format_json
    {
      id: self.id, 
      name: self.name, 
      age: self.age,
      activities: self.activities.map do |activity|
        {
          id: activity.id,
          name: activity.name,
          difficulty: activity.difficulty
        }
      end 
    }
  end 

end
