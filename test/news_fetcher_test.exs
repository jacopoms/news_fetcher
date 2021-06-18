defmodule NewsFetcherTest do
  use ExUnit.Case
  doctest NewsFetcher

  test "processs_request_url returns the expected url" do
    assert NewsFetcher.process_request_url("") == "http://content.guardianapis.com/"
  end
end
