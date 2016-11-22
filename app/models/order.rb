class Order < ApplicationRecord
  belongs_to :customer
  after_destroy :destroy_message

  protected
    def destroy_message
      puts "hello, see you next life"
    end

end
