class Web::ProductCatsController < ApplicationController
  layout 'layouts/design_web'
  before_action :authenticate_customer!
end
