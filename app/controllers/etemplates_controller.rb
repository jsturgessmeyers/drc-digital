class EtemplatesController < ApplicationController
  before_action :set_etemplate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /etemplates
  # GET /etemplates.json
  def index
    @etemplates = Etemplate.all
  end

  # GET /etemplates/1
  # GET /etemplates/1.json
  def show
  end

  # GET /etemplates/new
  def new
    @etemplate = current_user.etemplates.build
  end

  # GET /etemplates/1/edit
  def edit
  end

  # POST /etemplates
  # POST /etemplates.json
  def create
    @etemplate = current_user.etemplates.build(etemplate_params)

    respond_to do |format|
      if @etemplate.save
        format.html { redirect_to etemplates_path }
        flash[:notice] = "Template successfully created."
        format.json { render :show, status: :created, location: @etemplate }
      else
        format.html { render :new }
        format.json { render json: @etemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etemplates/1
  # PATCH/PUT /etemplates/1.json
  def update
    respond_to do |format|
      if @etemplate.update(etemplate_params)
        format.html { redirect_to etemplates_path, notice: 'Template was successfully updated.' }
        format.json { render :show, status: :ok, location: @etemplate }
      else
        format.html { render :edit }
        format.json { render json: @etemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etemplates/1
  # DELETE /etemplates/1.json
  def destroy
    @etemplate.destroy
    respond_to do |format|
      format.html { redirect_to etemplates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etemplate
      @etemplate = Etemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etemplate_params
      params[:etemplate].permit(:description, :image, :name, :codepen_data)
    end
end
