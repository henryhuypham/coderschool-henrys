class Section < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :food_items, :dependent => :destroy

  def self.retrieve_food_items(section_name, sort_column, sort_direction)
    sections = Section.where('lower(name) = ?', section_name ? section_name.downcase : '')
    food_items = sections.empty? ? FoodItem.all : sections.first.food_items

    sort_direction ||= 'asc'
    sort_column ? food_items.order("#{sort_column} #{sort_direction}") : food_items
  end

  def self.search_food_item(search_term)
    FoodItem.where('lower(name) like ?', "%#{search_term.downcase}%")
  end
end
