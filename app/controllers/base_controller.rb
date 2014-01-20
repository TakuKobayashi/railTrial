# coding: utf-8
class BaseController < ApplicationController
  before_filter :permit_all_parameter
  before_filter :get_ip_address
  before_filter :find_user

  private
  def permit_all_parameter
    params.permit!
  end

  def get_ip_address
    @remote_ip = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_ip
  end

  def find_user
    @user = User.where(ip_address: @remote_ip).first
  end

  def find_or_create_user
    @user = User.find_or_create_by_ip_address(@remote_ip)
  end

  def render_error(message)
    @message = message
    render(template: "share/error")
  end
end
