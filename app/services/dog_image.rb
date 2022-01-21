class DogImage
  def self.get_random_dog_pic_url
    response = HTTParty.get('https://dog.ceo/api/breeds/image/random')
    response["message"]
  end
end