class Order < ActiveRecord::Base
  belongs_to :user
  has_many :placements
  has_many :products, through: :placements

  validates :user_id, presence: true
  validates_with EnoughProductsValidator #this is the line we added for the custom validator

  before_validation :set_total!

  def set_total!
    self.total = products.map(&:price).sum
  end

  def build_placements_with_product_ids_and_quantities(product_ids_and_quantities)
    product_ids_and_quantities.each do |product_id_and_quantity|
      id, quantity = product_id_and_quantity # [1,5]

      self.placements.build(product_id: id, quantity: quantity)
    end
  end
end
