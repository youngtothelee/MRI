class TermsController < ApplicationController
before_action :find_term, only: [:show, :edit, :update, :destroy]

	def index
		@terms = Term.all.order("created_at DESC")
	end

	def show
	end

	def new
		@term = Term.new
	end

	def create
		@term = Term.new(term_params)
		@term.signed_on = Time.now.in_time_zone('Seoul')
		if @term.save
     		 redirect_to root_url, notice: 'Terms and Conditions accepted.'
		else
			render 'new'
		end
	end

	private

		def term_params
			params.require(:term).permit(:name, :signature, :signed_on, :check)
		end

		def find_term
			@term = Term.find(params[:id])
		end
end
