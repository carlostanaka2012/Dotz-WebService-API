Dado("o endereço da API para acessar o catálogo disponível") do
    #$uri_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
    #já instaciado pela classe Startup
end

Então("realizar requisição para consultar") do 
    @endereço = ("https://swapi.dev/api/films")
    @result = HTTParty.get(@endereço)
end
   
Quando('armazeno o valor do campo {string} dos results') do |title|
  parsed = JSON.parse(@result.body)
  parsed['results'].each do |name|
  puts(name['title'])
  expect(@result.code).to eq(200)
  
  end
  puts(@result.code)
  expect(@result.message).to eq("OK")
  puts(@result.message)
end

Dado('o endereço da API para acessar o catálogo disponível {string}') do |planets|
  #@endereço1 = ("https://swapi.dev/api/planets")
  #@result = HTTParty.get(@endereço)
    #já instaciado pela classe Startup
end
  
Então('realizar requisição para consultar api {string}') do |planets|
  @enderecoplanets = ("https://swapi.dev/api/planets")
  puts(@result.body)
  @resultplanets = HTTParty.get(@enderecoplanets)
end

Quando('armazeno o valor do campo {string}') do |count|
  parsed = JSON.parse(@result.body)
  puts "response message:#{response.message}"
  puts "response headers:#{response.headers}"
  puts "response body:#{response.body}"
  
end

Quando('solicito uma nova requisição com valor superior armazenado') do
  @result = HTTParty.get("https://swapi.dev/api/planets/#{@planets}/#{@count==90}/json/")
  @resultplanets = HTTParty.get(@endereçoplanets)
end
  
Então('verifico status da requisição') do
  puts(@resultplanets2.code)
  expect(@result.code).to eq(200)
  expect(@resultplanets2.message).to eq("count")
  puts(@resultplanets2.message)
end





