@user1 = User.create!(name:"Damjan Radev", username: "dame.radev", email: "dame@test.com", password: "123456", password_confirmation: "123456")
@user2 = User.create!(name:"Gose Simonov", username: "gose.simonov", email: "gose@test.com", password: "123456", password_confirmation: "123456")
@user3 = User.create!(name:"Godazd Kuzev", username: "kralce.kuzev", email: "goki@test.com", password: "123456", password_confirmation: "123456")
@user4 = User.create!(name:"Damjan Jovanov", username: "giska", email: "coki@test.com", password: "123456", password_confirmation: "123456")
@user5 = User.create!(name:"Risto Kovachev", username: "riste", email: "riki@test.com", password: "123456", password_confirmation: "123456")
@user6 = User.create!(name:"Petar Rizov", username: "peroo", email: "pero@test.com", password: "123456", password_confirmation: "123456")

6.times do |i|
  Tweet.create!(tweet:"Sample tweet", user_id: i+1)
end
