class Select
	attr_accessor :options

	def self.with_option(option)
		select = self.new
		select.options << option
		select
	end

	def options
		@options ||= []
	end

	def add_option(arg)
		@options << arg
		self
	end

	def and(option)
		options << option
		self
	end

end

select = Select.with_option("Pink")
select.add_option("Blue")
select.add_option("Red")
select.add_option("Green")
select.add_option("White")
select.add_option("Coral")

select1 = Select.with_option(1999).add_option(2000).add_option(2001).
          add_option(2002)

p select1

select2 = Select.with_option(1999).and(2000).and(2001).and(2002)

p select2