class Specialty < ApplicationRecord
  has_ancestry
  has_many :users

  def self.arrange_as_array(options = {}, hash = nil)
    hash ||= arrange(options)

    arr = []
    hash.each do |node, children|
      arr << node
      arr += arrange_as_array(options, children) unless children.empty?
    end
    arr
  end

  def name_for_selects
    "#{'-' * depth} #{name}"
  end
end