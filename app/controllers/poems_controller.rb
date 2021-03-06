class PoemsController < ApplicationController
  def index
    connection = Faraday.new "https://www.poemist.com"
    response = connection.get('api/v1/randompoems')
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    @poem = Poem.new(parsed_response)
  end
end
