class UsersController < ApplicationController
  has_secure_password

  ##### Validations #####
  ## .This data is required and must satisfy the
  ## .associated validations defined.
  validate :name, presence: true
  validate :email, presence: true, uniqueness: true
  validate :password_digest, presence: true
  #####

  ##### User Views #####
  ## .These are the main html views that the sites
  ## .users will work with.
  def user_dashboard
  end

  def user_profile
  end

  def list_a_pet
  end
end
