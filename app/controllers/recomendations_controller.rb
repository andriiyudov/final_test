class RecomendationsController < ApplicationController

	def create
		binding.pry
    Recomendation.create(params_recomend)
    redirect_back fallback_location: root_path
  end	

  private

  def params_recomend
  	params.require(:recomendation).permit(:body, :mark, :recomend_type, :recomend_id, :user_id, :sender, :place_id)
  end

end