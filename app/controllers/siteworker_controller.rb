class SiteworkerController < ApplicationController
  def index
    @siteworkers = Siteworker.all
  end
end
