defmodule ApiMockBee.Conf.ParserTest do
  use ApiMockBee.Case, async: true
  doctest ApiMockBee.Conf.Parser

  test "empty configuration parse yields a list" do
    ""
    |> ConfParser.parse
    |> is_list
    |> assert
  end

  test "empty configuration parse yields a list with a default match" do
    res = ""
    |> ConfParser.parse

    assert res === [ConfMatch.new]
  end
end
