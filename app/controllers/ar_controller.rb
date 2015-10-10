class ArController < ApplicationController

  def home
  end


  def has_one
    @user = HasOne1.first
    @business = HasOneB.first
  end

  def has_many
    @user = Userhm.find(1)
    @doctors = Doctor.all
    @doctor1 = Doctor.find(1)
    @doctor2 = Doctor.find(2)
  end

  def has_many_through
    @couple = Couple.find(1)
    @vendors = Vendor.all
    @vendor = Vendor.find(1)
    @couples = Couple.all
    @contract = Contract.first
  end

end
