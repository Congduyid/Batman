class Product < ApplicationRecord
    has_attached_file :image, styles: {medium: "10000x10000>", thumb: "10000x10000>"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    include PgSearch
    pg_search_scope :search_name, against: [:title, :description]
    belongs_to :loai

    validates :title, :description,:image,:price, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}

end