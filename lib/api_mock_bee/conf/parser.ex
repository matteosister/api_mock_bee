defmodule ApiMockBee.Conf.Parser do
  use ApiMockBee.Aliases

  def parse("") do
    [Match.new]
  end
  def parse(conf) do
    conf
    |> Poison.decode!
  end
end
