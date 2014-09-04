class Link < ActiveRecord::Base
  validates :full_link, presence: true
  validate :check_url

  def check_url
    # return false
    #Validating url
    require 'uri'
    # def valid?(full_link)
    uri = URI.parse(full_link)
    errors.add :full_link, "is not http link" unless uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      errors.add :full_link, "is not link"
      # return false
    # end

  end
end
