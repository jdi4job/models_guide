class ProductsController < ApplicationController

  def self.demo_06
    User.create
    User.create!
  end

end
