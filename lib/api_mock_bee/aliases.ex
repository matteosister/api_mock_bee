defmodule ApiMockBee.Aliases do
  defmacro __using__(_) do
    quote do
      alias ApiMockBee.Conf.Parser, as: ConfParser
      alias ApiMockBee.Conf.Match
      alias ApiMockBee.Conf.Response
      alias ApiMockBee.Matcher
    end
  end
end
