require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: 'example user', email: 'user@example.com',
                    password: '12', password_confirmation: '12')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'should be present' do
    @user.name = ''
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'name should not be too long' do
    @user.name = 'a' * 50
    assert @user.valid?
  end

  test 'email should not be too long' do
    @user.email = 'a' * 50 + '@me.com'
    assert @user.valid?
  end

  test 'email validation should accept valid addresses' do
    valid_addresses = %w[user@example.com User@FOO.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |v|
      @user.email = v
      assert @user.valid?, "#{v.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user@example. foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |i|
      @user.email = i
      assert_not @user.valid?, "#{i.inspect} should be invalid"
    end
  end

  test 'email address should be unique' do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test 'password should have a minimum length' do
    @user.password = @user.password_confirmation = 'a'
    assert_not @user.valid?
  end
end
