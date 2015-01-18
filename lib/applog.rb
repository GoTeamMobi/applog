require "applog/version"

module Applog

	class ApplicationManager

		def self.logApplications
	  	File.open('system-backup-log.txt', 'w') do |file|
	  		applications = Dir.entries("/Applications/")

	  		puts "Detected #{applications.count} Applications\n\n"
	  		file.puts "#{applications.count} Applications\n\n"

	  		for application in applications
	  			if(application[0] != '.')
	  				puts "#{application[0..application.length - 5]}"
		  			file.puts "#{application[0..application.length - 5]}"
		  		end
	  		end
	  	end
	  end

	end

end
