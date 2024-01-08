class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    after_initialize :set_defaults

    def total_price
        self.quantity * self.product.price
      end

      def set_defaults
        quantity = 0
      end
end
