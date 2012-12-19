require 'test_helper'

class FedexContractsControllerTest < ActionController::TestCase
  setup do
    @fedex_contract = fedex_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fedex_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fedex_contract" do
    assert_difference('FedexContract.count') do
      post :create, fedex_contract: { content: @fedex_contract.content, contractorContractName: @fedex_contract.contractorContractName, contractorContractNumber: @fedex_contract.contractorContractNumber, endDate: @fedex_contract.endDate, fedexContractName: @fedex_contract.fedexContractName, fedexContractNumber: @fedex_contract.fedexContractNumber, startDate: @fedex_contract.startDate }
    end

    assert_redirected_to fedex_contract_path(assigns(:fedex_contract))
  end

  test "should show fedex_contract" do
    get :show, id: @fedex_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fedex_contract
    assert_response :success
  end

  test "should update fedex_contract" do
    put :update, id: @fedex_contract, fedex_contract: { content: @fedex_contract.content, contractorContractName: @fedex_contract.contractorContractName, contractorContractNumber: @fedex_contract.contractorContractNumber, endDate: @fedex_contract.endDate, fedexContractName: @fedex_contract.fedexContractName, fedexContractNumber: @fedex_contract.fedexContractNumber, startDate: @fedex_contract.startDate }
    assert_redirected_to fedex_contract_path(assigns(:fedex_contract))
  end

  test "should destroy fedex_contract" do
    assert_difference('FedexContract.count', -1) do
      delete :destroy, id: @fedex_contract
    end

    assert_redirected_to fedex_contracts_path
  end
end
