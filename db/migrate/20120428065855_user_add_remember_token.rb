class UserAddRememberToken < ActiveRecord::Migration
  def up
    User.all.each do |user|
      user.remember_token = nil
      puts user.remember_token
      user.save(validate: false)
      puts user.remember_token
    end
  end

  def down
      User.all.each do |user|
        user.save(validate: false)
        puts user.remember_token
      end
  end
end
