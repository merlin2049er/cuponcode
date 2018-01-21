class LookupController < ApplicationController

  def index


  end

  def search

    respond_to do |format|
      format.html do
        if  @cupon = Cupon.find_by_code( params[:q])
          @result = @cupon.comment
          format.html { redirect_to('lookup#search', :notice => @result) }
        else
          @result = "That does not apply!"
          format.html { redirect_to('lookup#search', :notice => @result) }

        end
      end

    end
  end

end
