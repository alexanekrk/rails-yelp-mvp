class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: %w[chinese italian japanese french belgian]

  def destroy
    Review.destroy_all
  end
end
