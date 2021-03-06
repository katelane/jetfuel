class Url < ActiveRecord::Base
  validates :full_url, presence: true
  validates :slug, uniqueness: true

  before_save :generate_slug
  before_save :grab_title

  def generate_slug
    self.slug = SecureRandom.urlsafe_base64(4)
  end

  def grab_title
    self.title = TitleHandler.find_title(full_url)
  end

  def self.visits(number)
    results = all.sort_by do |url|
    url.created_at
    end
    results.reverse
  end
end
