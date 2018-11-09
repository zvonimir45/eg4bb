require 'test_helper'

class WaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ware = wares(:one)
  end

  test "should get index" do
    get wares_url
    assert_response :success
  end

  test "should get new" do
    get new_ware_url
    assert_response :success
  end

  test "should create ware" do
    assert_difference('Ware.count') do
      post wares_url, params: { ware: { annex: @ware.annex, bill: @ware.bill, brand: @ware.brand, category: @ware.category, conclusion: @ware.conclusion, contract: @ware.contract, d_location: @ware.d_location, deadline: @ware.deadline, details: @ware.details, dim_a_cm: @ware.dim_a_cm, dim_b_cm: @ware.dim_b_cm, dim_h_cm: @ware.dim_h_cm, down_p: @ware.down_p, evaluation: @ware.evaluation, image: @ware.image, in_showroom: @ware.in_showroom, ok_no: @ware.ok_no, phase: @ware.phase, price: @ware.price, q_unit: @ware.q_unit, quantity: @ware.quantity, s_location: @ware.s_location, target_no: @ware.target_no, title: @ware.title, weight_kg: @ware.weight_kg } }
    end

    assert_redirected_to ware_url(Ware.last)
  end

  test "should show ware" do
    get ware_url(@ware)
    assert_response :success
  end

  test "should get edit" do
    get edit_ware_url(@ware)
    assert_response :success
  end

  test "should update ware" do
    patch ware_url(@ware), params: { ware: { annex: @ware.annex, bill: @ware.bill, brand: @ware.brand, category: @ware.category, conclusion: @ware.conclusion, contract: @ware.contract, d_location: @ware.d_location, deadline: @ware.deadline, details: @ware.details, dim_a_cm: @ware.dim_a_cm, dim_b_cm: @ware.dim_b_cm, dim_h_cm: @ware.dim_h_cm, down_p: @ware.down_p, evaluation: @ware.evaluation, image: @ware.image, in_showroom: @ware.in_showroom, ok_no: @ware.ok_no, phase: @ware.phase, price: @ware.price, q_unit: @ware.q_unit, quantity: @ware.quantity, s_location: @ware.s_location, target_no: @ware.target_no, title: @ware.title, weight_kg: @ware.weight_kg } }
    assert_redirected_to ware_url(@ware)
  end

  test "should destroy ware" do
    assert_difference('Ware.count', -1) do
      delete ware_url(@ware)
    end

    assert_redirected_to wares_url
  end
end
