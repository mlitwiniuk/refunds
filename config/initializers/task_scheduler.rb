require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 scheduler.every '1s' do
      puts "Test!"
      SendReportWorker.new.perform
 end
