#!/usr/bin/env ruby

raise "I need an argument -- problem number" if ARGV.size == 0
num = '%03d' % ARGV[0]
filename = "#{num}.rb"

raise "#{filename} exists!" if File.exist?(filename)
File.open(filename, 'w+') do |f|
    f.write <<"EOS"
#!/usr/bin/env ruby

class Problem#{num}
    def self.run
    end
end

p Problem#{num}.run
EOS

end
