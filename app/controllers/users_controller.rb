class UsersController < ApplicationController
  has_secure_password

  ##### Validations #####
  ## -This data is required and must satisfy the
  ## -associated validations defined.
  validate :name, presence: true
  validate :email, presence: true, uniqueness: true
  validate :password_digest, presence: true, uniqueness: true
  #####

  ##### User Views #####
  ## -These are the main html views that the sites
  ## -users will work with. Rails implicitly knows
  ## -that each method renders the corresponding
  ## -html file. (e.g. bookmarks => bookmarks.html)
  def user_dashboard
  end

  def user_profile
  end

  def list_a_pet
  end

  def bookmarks
  end
  #####
end
