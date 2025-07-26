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
  ## -html file. (e.g. bookmarks => bookmarks.html.erb)
  def user_dashboard
  end

  def user_profile
  end

  def list_a_pet
    # -Users will be able to list a pet for sale.
  end

  def bookmarks
    # -Users will be able to 'bookmark' a pet or pets.
    # -These pets can be then views later in dedicated
    # -dashboard (see Pages controller).
  end
  #####
end
