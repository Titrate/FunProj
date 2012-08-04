class SysCleansController < ApplicationController
  # GET /sys_cleans
  # GET /sys_cleans.json
  def index
    @sys_cleans = SysClean.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sys_cleans }
    end
  end

  # GET /sys_cleans/1
  # GET /sys_cleans/1.json
  def show
    @sys_clean = SysClean.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sys_clean }
    end
  end

  # GET /sys_cleans/new
  # GET /sys_cleans/new.json
  def new
    @sys_clean = SysClean.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sys_clean }
    end
  end

  # GET /sys_cleans/1/edit
  def edit
    @sys_clean = SysClean.find(params[:id])
  end

  # POST /sys_cleans
  # POST /sys_cleans.json
  def create
    @sys_clean = SysClean.new(params[:sys_clean])

    respond_to do |format|
      if @sys_clean.save
        format.html { redirect_to @sys_clean, notice: 'Sys clean was successfully created.' }
        format.json { render json: @sys_clean, status: :created, location: @sys_clean }
      else
        format.html { render action: "new" }
        format.json { render json: @sys_clean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sys_cleans/1
  # PUT /sys_cleans/1.json
  def update
    @sys_clean = SysClean.find(params[:id])

    respond_to do |format|
      if @sys_clean.update_attributes(params[:sys_clean])
        format.html { redirect_to @sys_clean, notice: 'Sys clean was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sys_clean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_cleans/1
  # DELETE /sys_cleans/1.json
  def destroy
    @sys_clean = SysClean.find(params[:id])
    @sys_clean.destroy

    respond_to do |format|
      format.html { redirect_to sys_cleans_url }
      format.json { head :no_content }
    end
  end
end
