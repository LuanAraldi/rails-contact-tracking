class Contact < ApplicationRecord
  validates :email,
            format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},
            :allow_blank => true
end
