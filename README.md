# Bank App
[![Maintainability](https://api.codeclimate.com/v1/badges/1cdf45b157d192f356f6/maintainability)](https://codeclimate.com/github/nikimanoledaki/bank/maintainability)

## Description

This programme has simple banking functionalities.

The purpose of this exercise is to practice doing technical tests independently as part of Week 10 of the Makers Academy course. This project was completed over the course of 2 days. 

See [here](#specification) for the client's specification, and [here](#user-stories) for my interpretation of these specfications as user stories. 

## Technologies
This simple bank application is written in Ruby with a strict Test-Driven Development process where each new step incremented the code's complexity. RSpec was used to run the tests.

## Design

This program has four classes: Account, Transaction, Log, Printer.

* Methods
  
* In terms of tests, the Account unit tests have mocks for the Transaction class, but they lack mocks for the Log and Printer classes. More mocks would be added with time.

## User Stories
```
As a user,
So that I can see how much money I have in my account
I want to see my balance

As a user,
So that I can add money to my account
I want to make a deposit of 1000

As a user,
So that I can purchase something
I want to make a withdrawal of 1000 

As a user,
So that I can keep track of my debit and credit transactions
I want to print an account statement

As a user, 
so that I can see when I deposited or withdrew money
I want my account statement to show transaction dates as 14/01/2012
```

## Getting started

```
$ git clone https://github.com/nikimanoledaki/bank.git
$ bundle install
```

## How to use
Invoke IRB and the main file at the same time with the following command:
```
$ irb -r ./lib/account.rb 
> account = Account.new
> account.deposit(1000)
> account.deposit(20000)
> account.withdrawal(500)
> account.statement
date || credit || debit || balance
25/02/2020 || 1000.00 || || 2000.00
25/02/2020 || 2000.00 || || 5000.00
25/02/2020 || || 500.00 || 2000.00
```

## How to test

### Run feature tests
See [how to use](#how-to-use) to run a manual feature test. 

You can also feature test edge cases, such as: 

- If the client inputs a value that is not a numeral.
```
> RuntimeError (Insufficient credit)
```

- If the client tries to make a debit transaction but there is insufficient credit in their account balance.
```
> RuntimeError (Must be a number)
```

### Run unit test
Run the rspec tests:
```
$ rspec
```

The current coverage is 100%.

## Specification

### Requirements
* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
