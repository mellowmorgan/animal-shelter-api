class CatImage
  def self.get_random_cat_pic_url
    response = HTTParty.get('https://api.thecatapi.com/v1/images/search')
    response[0]["url"]
  end
end