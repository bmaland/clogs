require_dependency "clogs/application_controller"

module Clogs
  class ClogsController < ApplicationController
    # GET /clogs
    # GET /clogs.json
    def index
      @clogs = Clog.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @clogs }
      end
    end
  
    # GET /clogs/1
    # GET /clogs/1.json
    def show
      @clog = Clog.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @clog }
      end
    end
  
    # GET /clogs/new
    # GET /clogs/new.json
    def new
      @clog = Clog.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @clog }
      end
    end
  
    # GET /clogs/1/edit
    def edit
      @clog = Clog.find(params[:id])
    end
  
    # POST /clogs
    # POST /clogs.json
    def create
      @clog = Clog.new(params[:clog])
  
      respond_to do |format|
        if @clog.save
          format.html { redirect_to @clog, notice: 'Clog was successfully created.' }
          format.json { render json: @clog, status: :created, location: @clog }
        else
          format.html { render action: "new" }
          format.json { render json: @clog.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /clogs/1
    # PUT /clogs/1.json
    def update
      @clog = Clog.find(params[:id])
  
      respond_to do |format|
        if @clog.update_attributes(params[:clog])
          format.html { redirect_to @clog, notice: 'Clog was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @clog.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /clogs/1
    # DELETE /clogs/1.json
    def destroy
      @clog = Clog.find(params[:id])
      @clog.destroy
  
      respond_to do |format|
        format.html { redirect_to clogs_url }
        format.json { head :no_content }
      end
    end
  end
end
