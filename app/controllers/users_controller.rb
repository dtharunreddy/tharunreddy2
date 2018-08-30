class UsersController < ApplicationController
  def index
    @users = User.all
    @books = Book.all
    @products = Product.all
    @categories = Category.all
  end

  def show
    @user = User.find(params[:id])
    @user_books = @user.books
    @user_categories = @user.categories
    @user_products = @user.products
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name,:city,:country,:email)
  end 

end