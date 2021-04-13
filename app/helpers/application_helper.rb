module ApplicationHelper
  def display_error_and_success
    if alert.present?
      "<div class='alert'>
        <p> #{alert}</p>
      </div>".html_safe
    elsif notice.present?
      "<div class='notice'>
        <p> #{notice}</p>
      </div>".html_safe
    end
  end

  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)

    if vote
      link_to(article_vote_path(id: vote.id, article_id: article.id), method: :delete) do
        '<p>Unlike <i class="fas fa-heart"></i></p>'.html_safe
      end
    else
      link_to(article_votes_path(article_id: article.id), method: :post) do
        '<p>Like <i class="far fa-heart"></i></p>'.html_safe
      end
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
