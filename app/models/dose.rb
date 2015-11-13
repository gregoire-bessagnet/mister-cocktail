class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, :ingredient, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

end
