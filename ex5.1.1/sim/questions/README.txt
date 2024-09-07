Question 1 - What con you do to solve the problem?
In the given description what is missed is the carry. In our design what we have done is define a variable called sum on N+1 bits. The size is incremented by one since the MSB is used to handle the carry out. Once the sum is computed the outputs have been mapped as follow:
Carry out -> MSB of the sum variable.
S -> N LSBs of the sum variable.

Question 2 - Which is the difference among the three outputs "S1", "S2", "S3"?
The difference among the three outputs is that:
For the behavioral description is possible to select the delay of the S and Co outputs. In one of them only the output is delayed, while the Co is computed immediatelly. On the other hand for the other behavioral component under test both are delayed.
The scructural description has some internal delays, defined within the FA component. Thus is possible to notice the rippling of the carry as different status for the output of the signal S, before reaching the final sum.

Question 3 - Zoom the waves in the range 24.5ns - 24.6ns: what's happening to the three outputs?

- both S1 is computed with a certain delay while Co1 is computed immediatelly 
- S2 and Co2 reach the correct final value only after a certain delay
- S3 and Co3 reach the correct final value only after a certain delay
