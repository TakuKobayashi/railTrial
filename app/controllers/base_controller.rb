# coding: utf-8
class BaseController < ApplicationController
  before_filter :permit_all_parameter
  before_filter :make_user

  private
  def permit_all_parameter
    params.permit!
  end

  def make_user
    @user = User.first_or_create(name: "test")
  end
end
