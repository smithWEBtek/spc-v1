170421


www.mockaroo.com
200 requests / day
limite of 5000 rows per request


API key:
1239b370

POST    http://www.mockaroo.com/api/generate(.format)


2017-05-25
questions for pool service app:

existing database sample / structure of tables, data types, relationships
generation of work orders
life cycle of an order
	customer calls
	work_order is created and printed
	work_order is assigned to a truck

inventory on trucks
	describe when/how trucks are loaded
		with tools
		with inventory
	how is inventory tracked
		daily
		with stickers on work_orders as steps are completed
		work_order with stickers data is entered into back office system
		inventory is updated
		truck_inventory is updated to show parts used(?)

inventory in stores
	how is it tracked
	where are records of inventory and transfers between stores
	how does a store's inventory interact with truck's inventory?

truck
	how is work capacity calculated for the day / week
	are work durations predictable to some degree?
	assign 'estimated work duration' to work_order
		truck is then filled to capacity based on total amt of 'work_duration' in assigned work_orders
		


removable labels
	how/when are these updated in backoffice system
	

history  / service notes

google map API
traveling salesman

# of calls per day
50 per week per truck
duration

