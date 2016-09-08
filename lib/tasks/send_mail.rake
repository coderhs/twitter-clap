task :send => :environment do |variable|
 puts "start"
 InvitationMailer.invite.deliver
 puts "end"  
end