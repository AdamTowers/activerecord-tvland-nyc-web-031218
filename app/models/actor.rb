class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full = "#{self.first_name} #{self.last_name}"
    full
  end

  def list_roles
    self.characters.map do |c|
      "#{c.name} - #{c.show.name}"
    end
  end

end
