require 'net/http'

namespace :content do
  task :fetch => :environment do
    STDERR.puts "#{WebSite.count} sites"
    WebSite.find_each do |site|
      STDERR.print "- Fetching #{site.url}\t"
      begin
        Net::HTTP.get_response(site.url, '/') do |response|
          case response
          when Net::HTTPOK
            STDERR.puts "OK! Got #{response.body.length} bytes"
            site.create_page_content(:body => response.body)
          else
            STDERR.puts "#{response.code} #{response.message}"
          end
        end
      rescue => e
        STDERR.puts "OUCH! #{e.message}"
      end
    end
  end

  task :icons => :environment do
    STDERR.puts "#{WebSite.count} sites"
    WebSite.find_each do |site|
      STDERR.print "- Fetching #{site.url}/favicon.ico\t"
      begin
        Net::HTTP.get_response(site.url, '/favicon.ico') do |response|
          case response
          when Net::HTTPOK
            STDERR.puts "OK! Got #{response.body.bytes.count} bytes"
            site.create_icon(:icon => response.body)
          else
            STDERR.puts "#{response.code} #{response.message}"
          end
        end
      rescue => e
        STDERR.puts "OUCH! #{e.message}"
      end
    end
  end
end
