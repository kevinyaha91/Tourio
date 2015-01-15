class Contract < ActiveRecord::Base

belongs_to :contractor, class_name: "User", foreign_key: :contractor_id, inverse_of: :contractors
belongs_to :contractee, class_name: "User", foreign_key: :contractee_id, inverse_of: :contractees

end
