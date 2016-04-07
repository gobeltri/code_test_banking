# Creating two banks
b1 = Bank.new
b2 = Bank.new

# Create two accounts in each bank
b1.accounts.new
b1.accounts.new
b2.accounts.new
b2.accounts.new

# Write in DB
b1.save
b2.save

# Create two transfers with different types
#t1 = Transfer.new( :interbank )
#t2 = Transfer.new( :intrabank )
