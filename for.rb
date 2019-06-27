musicians = [
  ["David", "Gilmour"],
  ["Roger", "Waters"],
  ["Richard", "Wright"],
  ["Nick", "Mason"]
]


for index in (0...musicians.size)
  puts musicians[index][0]
end

for musician in musicians
  puts musician[0]
end
