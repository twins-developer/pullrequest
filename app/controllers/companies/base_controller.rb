class Companies::BaseController < ApplicationController
  before_action :authenticate_company!
end
