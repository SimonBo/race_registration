class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy, :pdf]

  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    respond_to do |f|
      f.html
      f.pdf do
        html = render_to_string(:action => "pdf.html.slim")
        kit = PDFKit.new(html)
        send_data(kit.to_pdf, :filename => "zgloszenie.pdf", :type => 'application/pdf', :disposition => 'attachment')
      end
    end
  end

  def pdf
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to registration_path(@registration.token) }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    respond_to do |format|
      if @registration.update(registration_params)
        format.html { redirect_to @registration, notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration.destroy
    respond_to do |format|
      format.html { redirect_to registrations_url, notice: 'Registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find_by_token(params[:token])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:name, :age, :phone_number, :email,
        :address, :team_1_name, :team_1_age, :team_2_name, :team_2_age,
        :team_3_name, :team_3_age, :team_4_name, :team_4_age, :token, :team_name)
    end
  end
