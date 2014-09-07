class GiftIdeasController < ApplicationController
  before_action :set_gift_idea, only: [:show, :edit, :update, :destroy]

  # GET /gift_ideas
  # GET /gift_ideas.json
  def index
    @gift_ideas = GiftIdea.all
  end

  # GET /gift_ideas/1
  # GET /gift_ideas/1.json
  def show
  end

  # GET /gift_ideas/new
  def new
    @gift_idea = GiftIdea.new
  end

  # GET /gift_ideas/1/edit
  def edit
  end

  # POST /gift_ideas
  # POST /gift_ideas.json
  def create
    @gift_idea = GiftIdea.new(gift_idea_params)

    respond_to do |format|
      if @gift_idea.save
        format.html { redirect_to @gift_idea, notice: 'Gift idea was successfully created.' }
        format.json { render :show, status: :created, location: @gift_idea }
      else
        format.html { render :new }
        format.json { render json: @gift_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_ideas/1
  # PATCH/PUT /gift_ideas/1.json
  def update
    respond_to do |format|
      if @gift_idea.update(gift_idea_params)
        format.html { redirect_to @gift_idea, notice: 'Gift idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift_idea }
      else
        format.html { render :edit }
        format.json { render json: @gift_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_ideas/1
  # DELETE /gift_ideas/1.json
  def destroy
    @gift_idea.destroy
    respond_to do |format|
      format.html { redirect_to gift_ideas_url, notice: 'Gift idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_idea
      @gift_idea = GiftIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_idea_params
      params.require(:gift_idea).permit(:name, :description, :url, :user_id)
    end
end
