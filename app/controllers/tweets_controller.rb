class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    tweet = Tweet.create(
      user: "Laurie",
      tweet: params[:tweet]
      )
    redirect_to "/tweets"
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
