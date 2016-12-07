require 'test_helper'

module Podcasts
  class ShowsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @show = podcasts_shows(:one)
    end

    test "should get index" do
      get shows_url
      assert_response :success
    end

    test "should get new" do
      get new_show_url
      assert_response :success
    end

    test "should create show" do
      assert_difference('Show.count') do
        post shows_url, params: { show: { author: @show.author, copyright: @show.copyright, description: @show.description, email: @show.email, explicit: @show.explicit, language: @show.language, last_build_date: @show.last_build_date, name: @show.name, primary_category: @show.primary_category, secondary_category: @show.secondary_category, subtitle: @show.subtitle, summary: @show.summary, title: @show.title } }
      end

      assert_redirected_to show_url(Show.last)
    end

    test "should show show" do
      get show_url(@show)
      assert_response :success
    end

    test "should get edit" do
      get edit_show_url(@show)
      assert_response :success
    end

    test "should update show" do
      patch show_url(@show), params: { show: { author: @show.author, copyright: @show.copyright, description: @show.description, email: @show.email, explicit: @show.explicit, language: @show.language, last_build_date: @show.last_build_date, name: @show.name, primary_category: @show.primary_category, secondary_category: @show.secondary_category, subtitle: @show.subtitle, summary: @show.summary, title: @show.title } }
      assert_redirected_to show_url(@show)
    end

    test "should destroy show" do
      assert_difference('Show.count', -1) do
        delete show_url(@show)
      end

      assert_redirected_to shows_url
    end
  end
end
