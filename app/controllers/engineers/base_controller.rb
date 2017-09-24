class Engineers::BaseController < ApplicationController
  before_action :authenticate_engineer!
end
