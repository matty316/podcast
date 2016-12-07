module Podcasts
  class Show < ApplicationRecord
    has_many :episodes
  end
end
