defmodule ApiMockBee.Conf.Parser do
  @moduledoc """
  Module to parse the configuration
  """

  use ApiMockBee.Aliases

  @default_match [Match.new]

  def parse(""), do: @default_match
  def parse(conf) do
    conf
    |> Poison.decode
    |> parse_matches
  end

  defp parse_matches({:error, _}), do: @default_match
  defp parse_matches({:ok, %{"matches" => matches}}) do
    do_parse_matches [], matches
  end

  defp do_parse_matches(acc, []), do: acc
  defp do_parse_matches(acc, [match_data | matches]) do
    new_acc = acc ++ [Match.from_match_data(match_data)]
    do_parse_matches(new_acc, matches)
  end
end
