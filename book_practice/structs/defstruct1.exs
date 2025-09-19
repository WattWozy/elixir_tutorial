defmodule Attendee do

  defstruct name: "", paid: false, over_18: true

  def may_attend_afterparty(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end
  
  def print_vip_badge(%Attendee{}) do
    IO.puts "missing name for the badge"
  end

end
