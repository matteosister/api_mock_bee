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

    assert res === [Match.new]
  end

  test "parsing a json configuration file" do
    json = ~s({
      "matches": [
        {
          "method": "post",
          "route": "/test",
          "response": {
            "body": "a test response",
            "status_code": "201"
          }
        }
      ]
    })
    res = json
    |> ConfParser.parse

    assert res === [%Match{method: "post", route: "/test", response: %Response{body: "a test response", status_code: "201"}}]
  end
end
