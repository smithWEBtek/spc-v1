DATA_groups ={
 :group_keys =>
    ["name"],
  :groups => [
    ["front-end"],["rails"],["javascript"],["tools"],["reading"],["mentors"],["video"],["track"], 
  ]
}

def make_groups
  DATA_groups[:groups].each do |group|
    new_group = Group.new
    group.each_with_index do |attribute, i|
      new_group.send(DATA_groups[:group_keys][i]+"=", attribute)
    end
    new_group.save
  end
end

def main
  make_groups
end

main