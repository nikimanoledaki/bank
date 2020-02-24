# Bank App

## Description

This programme has simple banking functionalities.

The purpose of this exercise is to practice doing technical tests independently as part of Week 10 of the Makers Academy course. This project was completed over the course of 2 days. 

See [here](#specification) for the client's specification, and [here](#user-stories) for my interpretation of these specfications as user stories. 

## Technologies & Design Principles
This simple bank application has been built with Ruby. 

It was written by following a strict Test-Driven Development process where each new step incremented the code's complexity. RSpec was used to run the tests.

## User Stories
```
As a user,
So that I can add money to my account
I want to make a deposit of 1000

As a user,
So that I can purchase something
I want to make a withdrawal of 1000 

As a user,
So that I can keep track of my expenditures
I want to be able to print an account statement

As a user,
So that I can see how much I own
I want to see my balance

As a user, 
so that I can see when I deposited or withdrew money
I want to see the date as 14/01/2012

As a user,
So that I can keep track of my account
I want to see the amount in my credit and debit accounts separately
```

## Getting started

```
$ git clone https://github.com/nikimanoledaki/bank.git
$ bundle install
```

## How to use
```
$ irb
```

## How to test
```
$ rspec
```

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
