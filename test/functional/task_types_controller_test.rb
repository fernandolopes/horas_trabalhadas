require 'test_helper'

class TaskTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:task_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_task_type
    assert_difference('TaskType.count') do
      post :create, :task_type => { }
    end

    assert_redirected_to task_type_path(assigns(:task_type))
  end

  def test_should_show_task_type
    get :show, :id => task_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => task_types(:one).id
    assert_response :success
  end

  def test_should_update_task_type
    put :update, :id => task_types(:one).id, :task_type => { }
    assert_redirected_to task_type_path(assigns(:task_type))
  end

  def test_should_destroy_task_type
    assert_difference('TaskType.count', -1) do
      delete :destroy, :id => task_types(:one).id
    end

    assert_redirected_to task_types_path
  end
end
