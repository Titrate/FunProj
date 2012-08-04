class SysChecksController < ApplicationController
  # GET /sys_checks
  # GET /sys_checks.json
  def index
    @sys_checks = SysCheck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sys_checks }
    end
  end

  # GET /sys_checks/1
  # GET /sys_checks/1.json
  def show
    @sys_check = SysCheck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sys_check }
    end
  end

  # GET /sys_checks/new
  # GET /sys_checks/new.json
  def new
    @sys_check = SysCheck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sys_check }
    end
  end

  # GET /sys_checks/1/edit
  def edit
    @sys_check = SysCheck.find(params[:id])
  end

  # POST /sys_checks
  # POST /sys_checks.json
  def create
    @sys_check = SysCheck.new(params[:sys_check])

    respond_to do |format|
      if @sys_check.save
        format.html { redirect_to @sys_check, notice: 'Sys check was successfully created.' }
        format.json { render json: @sys_check, status: :created, location: @sys_check }
      else
        format.html { render action: "new" }
        format.json { render json: @sys_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sys_checks/1
  # PUT /sys_checks/1.json
  def update
    @sys_check = SysCheck.find(params[:id])

    respond_to do |format|
      if @sys_check.update_attributes(params[:sys_check])
        format.html { redirect_to @sys_check, notice: 'Sys check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sys_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_checks/1
  # DELETE /sys_checks/1.json
  def destroy
    @sys_check = SysCheck.find(params[:id])
    @sys_check.destroy

    respond_to do |format|
      format.html { redirect_to sys_checks_url }
      format.json { head :no_content }
    end
  end
end
