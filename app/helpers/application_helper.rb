module ApplicationHelper
  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)

    if vote
      link_to('Unvote', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
    else
      link_to('Vote!', article_votes_path(article_id: article.id), method: :post)
    end
  end

  def user_permission
    if user_signed_in?
      render 'layouts/user_controls'
    else
      render 'layouts/user_credentials'
    end
  end

  def current_class?(given_path)
    return 'active' if request.path == given_path
    ''
  end
end
