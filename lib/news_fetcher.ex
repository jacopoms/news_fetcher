defmodule NewsFetcher do
  use HTTPoison.Base
  @moduledoc """
  Documentation for `NewsFetcher`.
  """

  @doc """
  Base URL for guardian content.

  ## Examples

      iex> NewsFetcher.process_request_url("")
      "http://content.guardianapis.com/"

  """
  def process_request_url(url) do
    "http://content.guardianapis.com" <> url
  end

  def process_request_headers do
    ["api-key": "some-key"]
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end

  def search(word) do
    get!("/search", process_request_headers(), q: word)
  end
end
