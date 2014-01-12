user = User.create(:email => "foo@bar.com", :password => "password", :password_confirmation => "password" )
s2_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))
s2_180_degree_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))

(1..10).each do
  Gadget.create(:name => "S2", :manufacturer => 'samsung', :pictures => [s2_pic, s2_180_degree_pic], :user => user)
end