class PagesController < ApplicationController
  def home
  end

  def form
    @requirements = Requirement.all 
  end
end
