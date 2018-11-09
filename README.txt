# cricket_problem

It's the last 4 overs of the match. India needs 40 runs to win and with 3 wickets left. Each player has a
different probability for scoring runs. Your coding problem is to simulate the match, ball by ball.
The match simulation will require you to use a weighted random number generation based on probability to determine the runs scored per ball. For this randomizer, you can use any external library of your choice (if you wish to, the choice is yours).

Name	    Dot ball 	1     2     3     4     5     6     out
Kirat Boli    5%        30%   25%   10%   15%   1%    9%    5%
NS Nodhi      10%       40%   20%   5%    10%   1%    4%    10%
R Rumrah      20%       30%   15%   5%    5%    1%    4%    20%
Shashi Henra  30%       25%   10%   0%    5%    1%    4%    30%

Rules of cricket
1. Batsmen change strike end of every over. They also change strike when they score a 1,3 or 5
2. When a player gets out, the new player comes in at the same position.
3. Assume only legal balls are bowled (no wides, no no-balls etc..). Therefore an over is always 6 balls.


Sample Output
India won by 1 wicket and 2 balls remaining
Kirat Boli	 - 12 (6 balls)
NS Nodhi - 25 (11 balls)
R Rumrah - 2* (3 balls) 
Shashi Henra - 2* (2 balls)

Sample commentary
4 overs left. 40 runs to win
0.1 Kirat Boli scores 1 run 0.2 NS Nodhi scores 4 runs 0.3 NS Nodhi scores 1 run 0.4 Kirat Boli scores 2 runs 0.5 Kirat Boli scores 3 runs 0.6 NS Nodhi scores 1 run
3 overs left. 28 runs to win
1.1 NS Nodhi scores 2 runs ....


Note: You can assume both Kirat Boli and NS Nodhi are batting on 0* when the simulation begins 
