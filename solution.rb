def solution(s)
  @files = s.split("\n")
  city_hash = @files.group_by { |file| file.split(', ')[1] }

  modified_groups = @files.map do |file|
    city = file.split(', ')[1]
    ext = file.split(', ')[0].split('.')[1]
    sorted_files = city_hash[city].sort_by { |photo| photo.split(', ')[2] }

    index = sorted_files.index(file) + 1
    digits = sorted_files.size.digits.count
    file_number = index.to_s.rjust(digits, '0')

    "#{city+file_number}.#{ext}"
  end

  modified_groups.join("\n")
end

files = "photo.jpg, Krakow, 2013-09-05 14:08:15
Mike.png, London, 2015-06-20 15:13:22
myFriends.png, Krakow, 2013-09-05 14:07:13
Eiffel.jpg, Florianopolis, 2015-07-23 08:03:02
pisatower.jpg, Florianopolis, 2015-07-22 23:59:59
BOB.jpg, London, 2015-08-05 00:02:03
notredame.png, Florianopolis, 2015-09-01 12:00:00
me.jpg, Krakow, 2013-09-06 15:40:22
a.png, Krakow, 2016-02-13 13:33:50
b.jpg, Krakow, 2016-01-02 15:12:22
c.jpg, Krakow, 2016-01-02 14:34:30
d.jpg, Krakow, 2016-01-02 15:15:01
e.png, Krakow, 2016-01-02 09:49:09
f.png, Krakow, 2016-01-02 10:55:32
g.jpg, Krakow, 2016-02-29 22:13:11"

puts solution(files)
