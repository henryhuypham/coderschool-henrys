class Section < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :food_items, :dependent => :destroy

  def self.find_food_items(section_name, sort_column, sort_direction)
    sections = Section.where('lower(name) = ?', section_name ? section_name.downcase : '')
    food_items = sections.empty? ? FoodItem.all : sections.first.food_items

    sort_direction ||= 'asc'
    sort_column ? food_items.order("#{sort_column} #{sort_direction}") : food_items
  end
end
