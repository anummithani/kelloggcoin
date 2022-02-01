# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

balance_ben = 0
balance_brian = 0
balance_evan = 0
balance_anthony = 0

for transaction in blockchain
  if transaction[:from_user] == "ben"
    balance_ben = balance_ben - transaction[:amount]
  elsif transaction[:from_user] == "brian"
    balance_brian = balance_brian - transaction[:amount]
  elsif transaction[:from_user] == "evan"
    balance_evan = balance_evan - transaction[:amount]
  elsif transaction[:from_user] == "anthony"
    balance_anthony = balance_anthony - transaction[:amount]
  end
end

for transaction in blockchain
  if transaction[:to_user] == "ben"
    balance_ben = balance_ben + transaction[:amount]
  elsif transaction[:to_user] == "brian"
    balance_brian = balance_brian + transaction[:amount]
  elsif transaction[:to_user] == "evan"
    balance_evan = balance_evan + transaction[:amount]
  elsif transaction[:to_user] == "anthony"
    balance_anthony = balance_anthony + transaction[:amount]
  end
end

puts "Ben's KelloggCoin balance is #{balance_ben}"
puts "Brian's KelloggCoin balance is #{balance_brian}"
puts "Evan's KelloggCoin balance is #{balance_evan}"
puts "Anthony's KelloggCoin balance is #{balance_anthony}"

