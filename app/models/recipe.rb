class Recipe < ApplicationRecord
    #belongs_to :user
    acts_as_votable
    #contraintes dans la base de donnée
    validates :name, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 255 }
    validates :category, presence: true, length: { maximum: 50 }

end
