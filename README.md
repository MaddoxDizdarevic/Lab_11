# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Kaylee Rasmor and Maddox Dizdarevic

## Summary
In this lab, we used D flip flops and T flip flops to create clock dividers. We created two separate ones, a modulo divider that uses a D flip flop and a comparater, and a ripple divider that used t flip flops to divide the clock signal.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

This is because when using D flip flops, its output is fed back to D, so it toggles its output every two clock cycles. This translates to the 2 * count division. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

This is because we don't define an initial state, so the ring counter automatically goes to all 1's on the first clock cycle. 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

We would most likely need a width of 100,000 of ring counter to get from 100 Mhz to ~1Khz. This is because they are directly proportionate, where the input frequency is divided by the output frequency. 

