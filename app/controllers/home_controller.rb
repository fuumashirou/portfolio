class HomeController < ApplicationController
before_action :authenticate_user!
#before_action :go_google

  def index
  	@nombre = params[:nombre]
  	@edad = params[:edad]

  	#raise "matias = #{params}"
  	@google_url ||= 'http://www.google.com'

  	Rails.logger.info "===========================> params = #{params}"

  end

private

	def go_google

		@google_url = 'http://www.google.cl'
		redirect_to @google_url
	end

end
