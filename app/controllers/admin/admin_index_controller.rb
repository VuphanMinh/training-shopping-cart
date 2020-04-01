class Admin::AdminIndexController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user! 
  def index; end
end
