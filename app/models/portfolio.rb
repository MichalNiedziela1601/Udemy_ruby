class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.topic
    where(subtitle: "Angular")
  end

  scope :my_great_service_portfolio_items, -> {where(subtitle: "My great service")}
end
