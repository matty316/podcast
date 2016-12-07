module Podcasts
  class Episode < ApplicationRecord
    belongs_to :show
  end
end
