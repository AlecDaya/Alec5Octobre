require 'time'
def time_string time
  if time <= 3600
    return Time.at(time).strftime "00:%M:%S"
  elsif time > 3600 && time < 216000
    if (time/60)/60 < 10
      return "0#{(time/60)/60}:#{Time.at(time).strftime "%M:%S"}"
    else 
      return "#{(time/60)/60}:#{Time.at(time).strftime "%M:%S"}"
    end
  else
    return "number is more that 24 hours"
  end
end

