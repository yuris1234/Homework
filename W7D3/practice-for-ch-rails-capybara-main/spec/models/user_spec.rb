require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password).is_at_least(6)}

  describe '#is_password?' do
    let (invalid_password) {BCrypt::Password.create(1234)}
    it 'should return false if the given password is not the same as the user password' do 
      expect(invalid_password).to eq(false)
    end
  end

  describe '#reset_session_token' do
    former = user.session_token
    user.reset_session_token
    it 'should reset the session token of the user to a new string' do
      expect(former_token).to_not be(user.session_token)
    end
  end

  describe '::find_by_credentials' do
    it 'should find the user by their email and password' do
      expect(user).to be(found_user)
    end
  end


end
