namespace :tharun do
  desc "create 100 users"
  task users: :environment do
  (1..100).each do |i|
        User.create(name:"name#{i}",city:"city#{i}",country:"country#{i}",email:"email#{i}")
     end
   end
   
  desc "thistask make first 50 users active value as false and next 50 users active value as true"
  task update_users: :environment do
  	@user_first_50 = User.first(50)
  	@user_last_50 = User.last(50)
  	  @user_first_50.each do |user|
  	  	user.active = false
  	  	user.save
  	  end
  	 @user_last_50.each do |user|
  	  	user.active = true
  	  	user.save
  	  end	 	
  	end

  desc "list all the active users"
  task :list_active_users => :environment do
    @users = User.all
    @users.each do |user|
      if user.active 
        puts user.name
      end 
    end
  end  

  desc "list all the active users"
  task :list_inactive_users => :environment do
    @users = User.all
    @users.each do |user|
      unless user.active 
        puts user.name
      end 
    end
  end 
    
      


end
