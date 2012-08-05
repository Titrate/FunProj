class CalsController < ApplicationController
  # GET /cals
  # GET /cals.json
  def index
    @events = SysOp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cals }
    end
  end

end