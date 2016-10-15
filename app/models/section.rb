class Section < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :food_items, :dependent => :destroy

  def self.food_items(section_name)
    sections = Section.where('lower(name) = ?', section_name ? section_name.downcase : '')
    sections.empty? ? FoodItem.all : FoodItem.where(section: sections.first)
  end
end
