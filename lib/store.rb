class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  validate :carry_men_or_women

  before_destroy :valid_destroy?



private
  def carry_men_or_women
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "Needs to at least serve men's or women's wear")
      errors.add(:womens_apparel, "Needs to at least serve men's or women's wear")
    end
  end

  def valid_destroy?
    if(self.employees.count > 0)
      errors.add(:employees, "Cannot destroy Database, there is at least 1 employee!")
      throw :abort
    else
      true
    end
  end
end
