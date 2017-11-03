class Actor < ActiveRecord::Base
  has_many :character
  has_many :show, through: :character

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.collect do |role|
      "#{characters.role} - #{characters.show.role}"
    end
  end
end
