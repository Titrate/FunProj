class CalsController < ApplicationController
  # GET /cals
  # GET /cals.json
  def index
    @cals = Cal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cals }
    end
  end

  # GET /cals/1
  # GET /cals/1.json
  def show
    @cal = Cal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cal }
    end
  end

  # GET /cals/new
  # GET /cals/new.json
  def new
    @cal = Cal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cal }
    end
  end

  # GET /cals/1/edit
  def edit
    @cal = Cal.find(params[:id])
  end

  # POST /cals
  # POST /cals.json
  def create
    @cal = Cal.new(params[:cal])

    respond_to do |format|
      if @cal.save
        format.html { redirect_to @cal, notice: 'Cal was successfully created.' }
        format.json { render json: @cal, status: :created, location: @cal }
      else
        format.html { render action: "new" }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cals/1
  # PUT /cals/1.json
  def update
    @cal = Cal.find(params[:id])

    respond_to do |format|
      if @cal.update_attributes(params[:cal])
        format.html { redirect_to @cal, notice: 'Cal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cals/1
  # DELETE /cals/1.json
  def destroy
    @cal = Cal.find(params[:id])
    @cal.destroy

    respond_to do |format|
      format.html { redirect_to cals_url }
      format.json { head :no_content }
    end
  end
end
