class LookupController < ApplicationController

  def search


  end

  def index
    @result = ''

    respond_to do |format|
      format.html do
        if  @cupon = Cupon.find_by_code( params[:q])
          @result = @cupon.comment
          format.html { redirect_to('lookup#search', :notice => @result) }
        else
          @result = "Enter a valid code..."
          format.html { redirect_to('lookup#search', :notice => @result) }

        end
      end

    end
  end

end
