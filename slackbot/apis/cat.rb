require 'httparty'
# require 'xml-simple'

# xs = XmlSimple.new({ 'ForceArray' => false, 'KeepRoot' => true})
response = HTTParty.get('http://thecatapi.com/api/images/get?format=xml&results_per_page=20')
# p response.body
# ref = xs.xml_in(response)
rep = response.to_h

cats = rep.each_with_object([]) do |foo, array|
  foo[1]["data"]['images'].each do |bar|
    # p bar
    bar[1].select do |baz|
      if baz['url']
       array << baz['url']
      end
      # baz[0]["url"]
      # baz[0][1]['url']
    end
  end
end

