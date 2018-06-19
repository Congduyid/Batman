class Product < ApplicationRecord
    has_attached_file :image, styles: {medium: "10000x10000>", thumb: "10000x10000>"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    include PgSearch
    pg_search_scope :search_name, against: [:title, :description]
    belongs_to :loai

    validates :title, :description,:image,:price, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}

    has_many :line_items
    before_destroy :check_if_has_line_item
  
	# private
  
 #    def check_if_has_line_item
 #        if line_items.empty?
 #            return true
 #        else
 #            errors.add(:base, 'This product has a LineItem')
 #            return false
 #        end
 #    end
    private
# ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
        end
    end
end