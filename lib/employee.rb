class Employee < ActiveRecord::Base
  belongs_to :store

  validates :store, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200}

  before_create :random_password

  private
  def random_password
    random_psw = (0...8).map { (65 + rand(26)).chr }.join
    self.password = random_psw
  end



end
