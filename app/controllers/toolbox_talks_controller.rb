class ToolboxTalksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_toolbox_talk, only: [:show, :edit, :update, :destroy]

  # GET /toolbox_talks
  # GET /toolbox_talks.json
  def index
    @toolbox_talks = ToolboxTalk.all
  end

  # GET /toolbox_talks/1
  # GET /toolbox_talks/1.json
  def show
  end

  # GET /toolbox_talks/new
  def new
    @toolbox_talk = ToolboxTalk.new
  end

  # GET /toolbox_talks/1/edit
  def edit
  end

  # POST /toolbox_talks
  # POST /toolbox_talks.json
  def create
    @toolbox_talk = ToolboxTalk.new(toolbox_talk_params)
    @toolbox_talk.user = current_user

    respond_to do |format|
      if @toolbox_talk.save
        format.html { redirect_to @toolbox_talk, notice: 'Toolbox talk was successfully created.' }
        format.json { render :show, status: :created, location: @toolbox_talk }
      else
        format.html { render :new }
        format.json { render json: @toolbox_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toolbox_talks/1
  # PATCH/PUT /toolbox_talks/1.json
  def update
    respond_to do |format|
      if @toolbox_talk.update(toolbox_talk_params)
        format.html { redirect_to @toolbox_talk, notice: 'Toolbox talk was successfully updated.' }
        format.json { render :show, status: :ok, location: @toolbox_talk }
      else
        format.html { render :edit }
        format.json { render json: @toolbox_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toolbox_talks/1
  # DELETE /toolbox_talks/1.json
  def destroy
    @toolbox_talk.destroy
    respond_to do |format|
      format.html { redirect_to toolbox_talks_url, notice: 'Toolbox talk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toolbox_talk
      @toolbox_talk = ToolboxTalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toolbox_talk_params
      params.require(:toolbox_talk).permit(:user_id, :invoice_date, :attendees, :topics, :comments, :inspections, :inspection_comments, :confirm)
    end
end
