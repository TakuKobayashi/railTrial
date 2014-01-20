# coding: utf-8
class GcmController < BaseController
  skip_before_filter :find_user
  before_filter :find_or_create_user

  def regist
    render_error("登録できませんでした") and return false if params[:registration_id].blank?
    gcm_token = GCMToken.find_or_initialize_by_user_id(@user.id)
    gcm_token.registration_id = params[:registration_id]
    gcm_token.token_type = gcm_token.class.to_s
    gcm_token.save!
    render :json => {status: "OK", registration_id: gcm_token.registration_id}
  end
end
