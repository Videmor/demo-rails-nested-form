class Project < ActiveRecord::Base
  attr_accessible :name, :complements_attributes
  has_many :complements

  accepts_nested_attributes_for :complements

end
