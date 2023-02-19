module Api::V1::ReviewsHelper
  def api_v1_spot_review_url(spot, review, options = {})
    api_v1_spot_reviews_url(spot, options.merge({ id: review.id }))
  end
end
