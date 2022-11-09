require 'json'

class StoreData
  def initialize(filename)
    @file_name = "store_data/#{filename}.json"
    write([]) unless File.file?(@file_name)
  end

  def read
    data = File.read(@file_name)
    JSON.parse(data)
  end

  def write(data)
    json = JSON.generate(data)
    File.write(@file_name, json)
  end
end
