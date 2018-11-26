module TvShowsHelper

  def has_vote_for?(tv_show)
    session.has_key?("votes_#{tv_show.id}")
  end
  def vote_for(tv_show)
    session["votes_#{tv_show.id}"]
  end
end
