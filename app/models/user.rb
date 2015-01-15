class User < ActiveRecord::Base

  has_secure_password
  
has_many :contractors, class_name: "Contract", foreign_key: :contractor_id, inverse_of: :contractor
has_many :contractees, class_name: "Contract", foreign_key: :contractee_id, inverse_of: :contractee

end
