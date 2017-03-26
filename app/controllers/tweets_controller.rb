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
    flash[:success] = "We did it! We all did it!"
    redirect_to "/tweets"
  end
  def show
    @tweet = Tweet.find_by(id: params[:id])
    render "show.html.erb"
  end
  def edit
    @tweet = Tweet.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def update
    @tweet = Tweet.find_by(id: params[:id])
    @tweet = Tweet.update(
        user: "Laurie",
        tweet: params[:tweet]
      )
    flash[:success] = "Tweet Successfully updated"
    redirect_to "/"
  end
  def destroy
    tweet = Tweet.finnd_by(id: params[:id])
    tweet.destroy
    flash[:warning] = "Tweet successfully demolished!"
    redirect_to "/"
  end
end
