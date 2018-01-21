class Cupon < ApplicationRecord

  validates :code, presence: true, uniqueness: true, length: { in: 5..8}


end
