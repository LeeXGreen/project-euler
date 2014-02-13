#!/usr/bin/env ruby

class Problem022
    def self.calc_score(position, name)
        sum = 0
        name.each_byte do |b|
            sum += (b - 64)
        end

        sum * (position + 1)
    end

    def self.load_from_file(path)
        name_string = File.read(path)
        name_array = name_string.split(',')
        name_array.sort!

        name_array.each do |name|
            name.gsub! /"/, ""
        end

        name_array
    end

    def self.run
        name_path = 'data/names.txt'
        sorted = load_from_file(name_path)

        #sum scores for each name
        sum = 0
        sorted.each_index do |i|
            sum += calc_score(i, sorted[i])
        end

        sum
    end
end

p Problem022.run
