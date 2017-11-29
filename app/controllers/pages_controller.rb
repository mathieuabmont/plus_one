class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :components]

  def home
    @prestation = Prestation.all.sample
  end

  def components
  end

end
