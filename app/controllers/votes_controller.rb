class VotesController < ApplicationController
  before_action :require_login, only: [:create, :destroy]

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      redirect_to article_path(params[:article_id])
    else
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])

    if vote
      vote.destroy
      redirect_to article_path(params[:article_id])
    end
  end

  def require_login
    return unless current_user.nil?

    redirect_to login_path, alert: 'You need to be logged in to vote!'
  end
end
