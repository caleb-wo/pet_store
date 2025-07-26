class AdminsController < ApplicationController
  has_secure_password

  ##### Validations #####
  ## -Admin data validations. Note that admin users
  ## -are required to have a unique email AND phone
  ## -number.
  validate :name, presence: true
  validate :email, presence: true, uniqueness: true
  validate :phone, presence: true, uniqueness: true
  validate :password_digest, presence: true, uniqueness: true
  #####

  ##### Admin Views #####
  ## -Views for admins.
  def admin_dashboard
  end

  def admin_profile
  end

  def stats_dashboard
  end

  def admin_inspector
    # -The inspector will be a tool
    # -for admins to search for users.
    # -It's how they access the user
    # -viewer page.
  end

  def user_viewer
    # -A detailed 'viewer' page for an admin
    # -to see certain user details.
  end
  #####
end
