class SiteController < ApplicationController
  def index
    @sites = Site.all
  end
end
