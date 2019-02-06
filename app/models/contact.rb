class Contact < ApplicationRecord

  # validates :first_name, :last_name, :email, presence: true
  # validates :email, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  belongs_to :user

  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
    
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_prefix
 "+81 #{phone_number}"
    
  end
def group_names
  groups.map {|group| group.name}
  
end
  # def coordinates
  #   coordinates = Geocoder.coordinates(:address)
    
  # end
end
