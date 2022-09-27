class Adopter < ActiveRecord::Base
  has_many :pets
  has_many :shelters, through: :pets 

  def full_name 
    "#{first_name} #{last_name}" 
  end 

  def adopt(pet) 
    if pet.adopted? == false
      pet.update(adopted?: true, adopter_id: id)
    else
      puts "Pet is already adopted"
    end 
  end 

  def fav_pet
    self.pets.maximum(:species)
  end 

end
