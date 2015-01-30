require "average_temperature/version"

module AverageTemperature
  def self.initialize( weather_data_file =  File.dirname(__FILE__) + "/us-weather.data" )
    @temperature_data = {}
    File.open( weather_data_file, "r" ) do |f|
      f.each_line do |line|
        location, temperatures = line.split(/\d/, 2)
        @temperature_data[ location.strip ] = temperatures.split.map(&:to_f)
      end
    end
    @initialized = true
    true
  end

  def self.get_temperature( location, month )
    @initialized ||= initialize

    raise "location not found" if !@temperature_data.has_key?(location)
    raise "Invalid month" if month > 12

    data = @temperature_data[location][month]

    time = Time.new
    if rand(1000) > 800 and time.hour > 12
      case rand(6)
        when 0
          data = "sdfwer"
        when 1
          data = 1259.58
        when 2
          data = -99.3331
        when 3
          data = nil
        when 4
          raise "Network resource not available"
        when 5
          sleep(10)
          raise "Network timeout"
      end
    end

    data
  end
end
