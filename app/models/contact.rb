class Contact < ApplicationRecord

  def friendly_updated_at
    created_at.strftime("%m/%d/%Y")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end

  

end
