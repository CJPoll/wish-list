class WishesController < ApplicationController
	before_action :set_wish, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	# GET /wishes
	# GET /wishes.json
	def index
		@user, @url = if params[:user_id]
			user = User.find params[:user_id]
			url = "/users/#{ user.id }/wishes.json"
			[ user, url ]
		else
			user = current_user
			url = "/wishes.json"
			[ user, url ]
		end

		@wishes = user.wishes

		respond_to do |format|
			format.html { render :index }
			format.json { render json: @wishes.to_json }
		end
	end

	# GET /wishes/1
	# GET /wishes/1.json
	def show
	end

	# GET /wishes/new
	def new
		@wish = Wish.new
	end

	# GET /wishes/1/edit
	def edit
	end

	# POST /wishes
	# POST /wishes.json
	def create
		@wish = Wish.new(wish_params)
		@wish.user = current_user

		respond_to do |format|
			if @wish.save
				format.html { redirect_to wishes_url }
				format.json { render :show, status: :created, location: @wish }
			else
				format.html { render :new }
				format.json { render json: @wish.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /wishes/1
	# PATCH/PUT /wishes/1.json
	def update
		respond_to do |format|
			if @wish.update(wish_params)
				format.html { redirect_to @wish, notice: 'Wish was successfully updated.' }
				format.json { render :show, status: :ok, location: @wish }
			else
				format.html { render :edit }
				format.json { render json: @wish.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /wishes/1
	# DELETE /wishes/1.json
	def destroy
		@wish.destroy
		respond_to do |format|
			format.html { redirect_to wishes_url, notice: 'Wish was successfully removed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_wish
		@wish = Wish.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def wish_params
		params.require(:wish).permit(:name, :description, :url)
	end
end
