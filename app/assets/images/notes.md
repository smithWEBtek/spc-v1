##2017-06-05	questions for pool service app:

###existing solutions(?) 
###biggest pain
###lifecycle of a work order
###office process
###existing database sample

###inventory on trucks

describe when/how trucks are loaded with inventory, parts and tools
how is inventory tracked
daily with stickers on work_orders as steps are completed
work_order with stickers data is entered into back office system
inventory is updated
truck_inventory is updated to show parts used(?)

###inventory in stores

how is it tracked
where are records of inventory and transfers between stores
how does a store's inventory interact with truck's inventory?

###truck

how is work capacity calculated for the day / week
are work durations predictable to some degree?
assign 'estimated work duration' to work_order
truck is then filled to capacity based on total amt of 'work_duration' in assigned work_orders

###removable labels

how/when are these updated in backoffice system
history, service notes
track by pool, customer, truck, employee
