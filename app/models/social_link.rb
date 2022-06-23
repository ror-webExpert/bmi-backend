class SocialLink < ApplicationRecord

  enum name: {twitter: "twitter", facebook: "facebook", instagram: "instagram", google_plus: "google-plus", linkedin: "linkedin"  }
  scope :position_order, -> {order("position ASC")}
end
