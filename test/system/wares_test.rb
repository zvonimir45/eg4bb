require "application_system_test_case"

class WaresTest < ApplicationSystemTestCase
  setup do
    @ware = wares(:one)
  end

  test "visiting the index" do
    visit wares_url
    assert_selector "h1", text: "Wares"
  end

  test "creating a Ware" do
    visit wares_url
    click_on "New Ware"

    fill_in "Annex", with: @ware.annex
    fill_in "Bill", with: @ware.bill
    fill_in "Brand", with: @ware.brand
    fill_in "Category", with: @ware.category
    fill_in "Conclusion", with: @ware.conclusion
    fill_in "Contract", with: @ware.contract
    fill_in "D Location", with: @ware.d_location
    fill_in "Deadline", with: @ware.deadline
    fill_in "Details", with: @ware.details
    fill_in "Dim A Cm", with: @ware.dim_a_cm
    fill_in "Dim B Cm", with: @ware.dim_b_cm
    fill_in "Dim H Cm", with: @ware.dim_h_cm
    fill_in "Down P", with: @ware.down_p
    fill_in "Evaluation", with: @ware.evaluation
    fill_in "Image", with: @ware.image
    fill_in "In Showroom", with: @ware.in_showroom
    fill_in "Ok No", with: @ware.ok_no
    fill_in "Phase", with: @ware.phase
    fill_in "Price", with: @ware.price
    fill_in "Q Unit", with: @ware.q_unit
    fill_in "Quantity", with: @ware.quantity
    fill_in "S Location", with: @ware.s_location
    fill_in "Target No", with: @ware.target_no
    fill_in "Title", with: @ware.title
    fill_in "Weight Kg", with: @ware.weight_kg
    click_on "Create Ware"

    assert_text "Ware was successfully created"
    click_on "Back"
  end

  test "updating a Ware" do
    visit wares_url
    click_on "Edit", match: :first

    fill_in "Annex", with: @ware.annex
    fill_in "Bill", with: @ware.bill
    fill_in "Brand", with: @ware.brand
    fill_in "Category", with: @ware.category
    fill_in "Conclusion", with: @ware.conclusion
    fill_in "Contract", with: @ware.contract
    fill_in "D Location", with: @ware.d_location
    fill_in "Deadline", with: @ware.deadline
    fill_in "Details", with: @ware.details
    fill_in "Dim A Cm", with: @ware.dim_a_cm
    fill_in "Dim B Cm", with: @ware.dim_b_cm
    fill_in "Dim H Cm", with: @ware.dim_h_cm
    fill_in "Down P", with: @ware.down_p
    fill_in "Evaluation", with: @ware.evaluation
    fill_in "Image", with: @ware.image
    fill_in "In Showroom", with: @ware.in_showroom
    fill_in "Ok No", with: @ware.ok_no
    fill_in "Phase", with: @ware.phase
    fill_in "Price", with: @ware.price
    fill_in "Q Unit", with: @ware.q_unit
    fill_in "Quantity", with: @ware.quantity
    fill_in "S Location", with: @ware.s_location
    fill_in "Target No", with: @ware.target_no
    fill_in "Title", with: @ware.title
    fill_in "Weight Kg", with: @ware.weight_kg
    click_on "Update Ware"

    assert_text "Ware was successfully updated"
    click_on "Back"
  end

  test "destroying a Ware" do
    visit wares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ware was successfully destroyed"
  end
end
