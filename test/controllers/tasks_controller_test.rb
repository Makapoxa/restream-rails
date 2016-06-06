require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  def setup
    @task = create :task
    @attributes = attributes_for :task
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    post :create, task: @attributes
    assert_response :redirect

    task = Task.find_by(@attributes)
    assert { task.name == @attributes[:name] }
  end

  def test_show
    get :show, id: @task.id
    assert_response :success
  end

  def test_edit
    get :edit, id: @task.id
    assert_response :success
  end

  def test_update
    put :update, id: @task.id, task: @attributes
    assert_response :redirect
  end

  def test_destroy
    assert { Task.where(id: @task.id).present? }

    delete :destroy, id: @task.id
    assert_response :redirect

    assert { Task.where(id: @task.id).empty? }
  end
end
