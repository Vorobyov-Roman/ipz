class Application < ActiveRecord::Base
  belongs_to :sender, class_name: "User"

  def pending?
    self.type == "PendingApplication"
  end

  def resolved?
    self.type == "ResolvedApplication"
  end

  def final_price(price)
    self.sender.categories.each { |c| price -= c.discount * price }
    price
  end
end
