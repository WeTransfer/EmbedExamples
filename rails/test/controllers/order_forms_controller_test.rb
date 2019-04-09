require 'test_helper'

class OrderFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_form = order_forms(:one)
  end

  test "should get index" do
    get order_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_order_form_url
    assert_response :success
  end

  test "should create order_form" do
    assert_difference('OrderForm.count') do
      post order_forms_url, params: { order_form: { description: @order_form.description, quantity: @order_form.quantity } }
    end

    assert_redirected_to order_form_url(OrderForm.last)
  end

  test "should show order_form" do
    get order_form_url(@order_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_form_url(@order_form)
    assert_response :success
  end

  test "should update order_form" do
    patch order_form_url(@order_form), params: { order_form: { description: @order_form.description, quantity: @order_form.quantity } }
    assert_redirected_to order_form_url(@order_form)
  end

  test "should destroy order_form" do
    assert_difference('OrderForm.count', -1) do
      delete order_form_url(@order_form)
    end

    assert_redirected_to order_forms_url
  end
end
