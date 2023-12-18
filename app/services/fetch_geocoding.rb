class FetchGeocoding
  def initialize(user_address)
    @user_address = user_address
  end

  def call
    url = "https://api-adresse.data.gouv.fr/search/?q=#{@user_address}"
    response = URI.open(url).read
    result = JSON.parse(response)
    result["features"][0]["geometry"]["coordinates"]
  end
end
