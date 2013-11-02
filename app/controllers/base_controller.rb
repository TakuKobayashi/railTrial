# coding: utf-8
class BaseController < ApplicationController
  before_filter :make_user
  private
  def make_user
    @user = User.first_or_create(name: "test")
  end
end
