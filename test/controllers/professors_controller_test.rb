require 'test_helper'

class ProfessorsControllerTest < ActionController::TestCase
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post :create, professor: { Address: @professor.Address, Cell_Phone: @professor.Cell_Phone, City: @professor.City, Department: @professor.Department, First_Name: @professor.First_Name, Home_Phone: @professor.Home_Phone, Last_Name: @professor.Last_Name, Office_Fax: @professor.Office_Fax, Office_Phone: @professor.Office_Phone, Primary_Email: @professor.Primary_Email, Secondary_Email: @professor.Secondary_Email, State: @professor.State, Zip_Code: @professor.Zip_Code }
    end

    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should show professor" do
    get :show, id: @professor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor
    assert_response :success
  end

  test "should update professor" do
    patch :update, id: @professor, professor: { Address: @professor.Address, Cell_Phone: @professor.Cell_Phone, City: @professor.City, Department: @professor.Department, First_Name: @professor.First_Name, Home_Phone: @professor.Home_Phone, Last_Name: @professor.Last_Name, Office_Fax: @professor.Office_Fax, Office_Phone: @professor.Office_Phone, Primary_Email: @professor.Primary_Email, Secondary_Email: @professor.Secondary_Email, State: @professor.State, Zip_Code: @professor.Zip_Code }
    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete :destroy, id: @professor
    end

    assert_redirected_to professors_path
  end
end
