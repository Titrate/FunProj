class SysOpsController < ApplicationController

  # GET /sys_ops/1
  # GET /sys_ops/1.json
  def show
    @sys_op = SysOp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sys_op }
    end
  end

  # GET /sys_ops/new
  # GET /sys_ops/new.json
  def new
    @time = Time.now
    @sys_op = SysOp.new(:start_time_column => :@time)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sys_op }
    end
  end

  # GET /sys_ops/1/edit
  def edit
    @sys_op = SysOp.find(params[:id])
  end

  # POST /sys_ops
  # POST /sys_ops.json
  def create
    @sys_op = SysOp.new(params[:sys_op])

    respond_to do |format|
      if @sys_op.save
        format.html { redirect_to @sys_op, notice: 'Sys op was successfully created.' }
        format.json { render json: @sys_op, status: :created, location: @sys_op }
      else
        format.html { render action: "new" }
        format.json { render json: @sys_op.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sys_ops/1
  # PUT /sys_ops/1.json
  def update
    @sys_op = SysOp.find(params[:id])

    respond_to do |format|
      if @sys_op.update_attributes(params[:sys_op])
        format.html { redirect_to @sys_op, notice: 'Sys op was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sys_op.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sys_ops/1
  # DELETE /sys_ops/1.json
  def destroy
    @sys_op = SysOp.find(params[:id])
    @sys_op.destroy

    respond_to do |format|
      format.html { redirect_to sys_ops_url }
      format.json { head :no_content }
    end
  end
end
