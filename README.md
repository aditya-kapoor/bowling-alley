## Bowling Match Problem

A bowling match consists of ten frames.

* Each frame except for the tenth consists of one or two balls, or attempts to knock down the ten pins at the end of the alley.
* Doing so on the first ball of the frame is called a strike, and the second ball of the frame is not rolled. 
* Knocking down all ten pins with both balls (having left some up with the first ball) is called a spare. 
* If both attempts to knock down the pins leave some standing, the frame is called an open frame. 
* A spare in the tenth frame gives the bowler one extra ball. A strike in the tenth gives him or her two extra balls.

### A bowling score is computed as follows.

- A strike counts as 10 points plus the sum of the next two balls.
- A spare counts as 10 points plus the next ball. 
- Any other balls merely count as themselves, as do any bonus balls rolled as a result of a strike or a spare in the tenth frame.

#### Example

| Frame  | Frame Score  | Status  |    Score| 
| ------ |:------------:|:-------:|:-------:|
| 1      | 9 1          | Spare   | 10      |
| 2      | 0 10         | Spare   | 30      |
| 3      | 10           | Strike  | 56      |
| 4      | 10           | Strike  | 74      |
| 5      | 6 2          | Open    | 82      |
| 6      | 7 3          | Spare   | 100     |
| 7      | 8 2          | Spare   | 120     |
| 8      | 10           | Strike  | 139     |
| 9      | 9 0          | Open    | 148     |
| 10     | 9 1          | Spare   | 168     |
|        | 10           |         |         |


#### How to run program?
There is a file named `input.txt` entered the frame scores in it.
Run ``` ruby game.rb``` to see the frame wise scores.