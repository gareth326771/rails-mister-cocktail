class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  def cocktail_difficulty(cocktail)
    if cocktail.doses.count >= 3
      @difficulty == "HARD"
    elsif cocktail.doses.count == 2
      @difficulty == "MEDIUM"
    elsif cocktail.doses.count <= 1
      @difficulty == "EASY"
    end
end
