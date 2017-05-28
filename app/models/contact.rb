class Contact < ApplicationRecord
  has_many :accesses

  validates :email,
            format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/},
            :allow_blank => true
end
