class StocksController < ApplicationController
	def search
	 if params[:stock].blank?
	 	flash.now[:danger]="You have entered an empty string!"
	 else	
       @stock= Stock.new_from_lookup(params[:stock])
       flash.now[:danger]="You have entered an invalid string!" unless @stock	
     end
     respond_to do |format|
     format.js {render partial: 'users/result'}
     end
  end
end