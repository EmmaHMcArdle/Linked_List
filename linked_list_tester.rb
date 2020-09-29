require './node'
require "./linked_list"
class LinkedListTester
  #head = Node.new(1)
  list = LinkedList.new(3)
  list.prepend(2)
  list.prepend(1)
  list.append(4)
  # puts list.at(0).to_s
  # puts list.at(1).to_s
  # puts list.at(2).to_s
  # puts list.at(3).to_s
  # list.at(4)
  # print "Head: "
  # puts list.head.to_s
  # print "Tail: "
  # puts list.tail.to_s
  # list.pop
  # puts list.at(0).to_s
  # puts list.at(1).to_s
  # puts list.at(2).to_s
  # list.at(3)
  # print "New Tail: "
  # puts list.tail.to_s
  # puts list.contains?(1)
  # puts list.contains?(4)
  # puts list.find(2)
  # list.insert_at(100,0)
  # puts list.at(0).to_s
  # puts list.at(1).to_s
  # print "\n"
  # list.insert_at(300, 2)
  # puts list.at(0).to_s
  # puts list.at(1).to_s
  # puts list.at(2).to_s
  # puts list.at(3).to_s
  # print "Tail: "
  # puts list.tail.to_s
  # print "\n"
  # list.insert_at(200, 1)
  # puts list.at(0).to_s
  # puts list.at(1).to_s
  # puts list.at(2).to_s
  # puts list.at(3).to_s
  # puts list.at(4).to_s
  # print "Tail: "
  #puts list.tail.to_s
  list.remove_at(5)
  puts list.at(0).to_s
  puts list.at(1).to_s
  puts list.at(2).to_s
  puts list.at(3).to_s
  print "Head: "
  puts list.head.to_s
end