class Pet < ActiveRecord::Base
  belongs_to :shelter 
  belongs_to :adopter 

  def self.oldest 
    Pet.all.order(age: :desc).first 
  end

  def self.average_age 
    Pet.average(:age).to_f
  end 

  def in_dog_years
    if species == 'dog' 
      age * 5
    else 
      puts 'This is not a dog'
    end
  end 

end
