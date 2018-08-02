require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { date_add: @article.date_add, date_remove: @article.date_remove, description: @article.description, make: @article.make, model: @article.model, ncic_num: @article.ncic_num, oca: @article.oca, officer_name: @article.officer_name, operator_name: @article.operator_name, owner_name: @article.owner_name, owner_phone: @article.owner_phone, remove_by: @article.remove_by, serial: @article.serial } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { date_add: @article.date_add, date_remove: @article.date_remove, description: @article.description, make: @article.make, model: @article.model, ncic_num: @article.ncic_num, oca: @article.oca, officer_name: @article.officer_name, operator_name: @article.operator_name, owner_name: @article.owner_name, owner_phone: @article.owner_phone, remove_by: @article.remove_by, serial: @article.serial } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
