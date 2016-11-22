class Product < ApplicationRecord
  # self.primary_key = "name"

  validates :name, absence: true


  def self.demo_01
    p = Product.new
    p.name = "Some Book"
    puts p.name
  end

  def self.demo_02
    user = User.create(name: "David", occupation: "Code Artist")

    user = User.new
    user.name = "Jack"
    user.occupation = "Paint Artist"
    user.save
  end

  def self.demo_03
    users = User.all
    p users

    user = User.first
    p user

    jack = User.find_by(name: 'Jack')
    p jack

    user = User.where(name: 'David', occupation: 'Code Artist').order('created_at DESC')
    p user

  end

  def self.demo_04
    user = User.find_by(name: 'David')
    user.name = 'David?'
    user.save
    p user

    # user = User.find_by(name: 'David?')
    # user.update(name: 'Dave')
    # p user
    #
    # User.update_all "max_login_attempts = 2, must_change_password = 'true'"

  end

  def self.demo_05
    user = User.find_by(name: 'Jacky')
    user.destroy
  end

  def self.demo_06
    User.create
    User.create!
  end

end
