require 'net/http'
require 'json'

class Add

  def self.url(street, number)
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=украина,черкассы,#{street},#{number}&key=AIzaSyDEhIhQZ_Nr-gSrnL9eNT-YM6nHF2YECbM"
    url = normalize_uri(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    if response.include? "ZERO_RESULTS"
      puts "Нет такой улицы"
    else
      puts "Есть такая улица"
    end
  end

  def self.normalize_uri(uri)
    return uri if uri.is_a? URI
    uri = uri.to_s
    uri, *tail = uri.rpartition "#" if uri["#"]

    URI(URI.encode(uri) << Array(tail).join)

  end

end
#Add.url("сметанки", 7)
