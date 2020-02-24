# Bank App

## Description

This simple bank application is an exercise that was part of Week 10 of the Makers Academy course. 

The purpose of this exercise is to practice doing technical tests. This project was completed alone over the course of 2 days. 

## Technologies & Design Principles
This simple bank application has been built with Ruby. 

It was written by following a strict Test-Driven Development process where each new step incremented the code's complexity. RSpec was used to run the tests.

## Getting started

```
$ git clone [path]
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
