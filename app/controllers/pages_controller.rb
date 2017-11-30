class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :components]

  def home
    @prestations = Prestation.all.sample(4)
  end

  def components
  end

end
