# ReadMe, Connect Four edition



### Statement of Purpose and Scope 



##### What the app does

Connect Four introduces the two characters with the main menu, for which they are able to create their player names. Once finished they are greeted with the vertical seven by six board and players are assigned a marker "x" and "o" respectively. Players take turns to put their pieces at the bottom of the board to attempt to connect 4 of their pieces in a horizontal, vertical, or diagonal line of four, this resulting in a win. The victorious player will have their name displayed and dubbed victorious. 

##### Problem it will solve 

Connect Four will attempt to solve boredom and possibly act as an icebreaker. Solving boredom through its intellectually challenging and entertaining nature, as both players must analyse the others move so as to not allow them to win. Acting as an icebreaker as organisations (e.g.. schools) could use with app as a way to introduce new people through Connect Fours co-op nature. 

##### Target Audience 

Connect Four is skewed towards a younger audience who wish to play a game with their friend to kill time.  This being especially relevant in todays circumstances, with video gaming being an increasingly poplar hobby amongst youths. With this digitised copy of Connect Four it attempts to appeal to that audience bringing back the once physical game enjoyed by many, in digital form.

##### How will target audience use this app? 

The younger target audience will play Connect Four with a friend, choosing each move carefully stimulating their mind while simultaneously having fun and socialising.  



### Features 



1. **Selection**    

   The selection feature will be an array which is displayed at the top of the board. There will be key bindings to cycle left and right through the array, this dictating where you will be placing your piece in the board. This feature will have to be in a loop as users must make multiple moves in game. There must also be limitations placed on how far the user can move through the array, limiting it to its maximum and minimum index.

   

2. **Piece placing**     

   The piece placing feature will place a players piece at the bottom of the board and stack if there is already one at the bottom. Building on the selection feature, the user will be ale to press "enter" to place their based on the index they selected with the selection feature. If the selected column is full and the user presses "enter" their turn will be reset, therefore handling a potential error.

   

3. **Menu selection**  

   The main menu will be the starting screen, from here a user will be able to select what they wish to do. The intended options on the menu will be "play" which will lead to the game, "tutorial" which will give the user a guide on the game and "quit" which will exit the program. This menu will be achieved utilizing the gem 'tty prompts', enabling the user to have an interactive experience.



Extras 

1. **Custom victory screen**   

   Based off which player wins there will be a different victory screen for both. The victory screen will contain ASCII art text using the gem 'artii', thus adding authenticity and a satisfaction to winning.



### User Interaction and Experience 



**User story** 

1. user will be met by main menu with 3 options 
   1. Play 
      - user will be asked a name for both player 1 and player 2 
        - the game will load 
          -   players will take turns putting pieces 
            - when one recognises a win they will press "w" 
              - this will bring up a victory screen  where users will chose who won 
                - based off that input a victory art screen 
                  - players will be prompted back to main menu
   2. Tutorial  
      1. Will show user controls and brief over view of how to play the game 
         - prompted to go back to main menu 
   3. Exit 
      1. will exit the program 



**Error Handling**

Error handling instances include 

1. Place piecing limit 
   - once a user has reach the limit of pieces placed in column pressing "enter" to place the piece will simply just restart their turn. The program will reset the players turn moving their piece back to the centre of the board.  
2.  Selector limit
   - Once a user has moved the selector to its very limits by pressing either "a" or "d" it will simply stay at the limit, unless instructed in the opposite direction. The program will have an if statement attached to both the "a" and "d" controls, telling it that if it reaches its limit don't add anymore to the index, but rather renew its maximum value. The user will only see that the piece will not move past its limits, no error message will be given.  
3. name size limit 
   - If the user is not within the specified boundaries of character length the user will prompted with a error message, telling them that they had too many or too few characters  and to try again. 



### **Implementation Plan** 



| Features                            | Checklist                                                    | Priority | Deadline |
| ----------------------------------- | ------------------------------------------------------------ | -------- | -------- |
| Key binding movement                | Understand  gem "io/console"                                 | P1       |          |
|                                     | Bind keys to change index in array                           | P1       |          |
|                                     | "a" moves left in array                                      | P1       |          |
|                                     | "d" moves right in array                                     | P1       |          |
|                                     | make when pressing "a" or "d" previous index is swapped so it appears as though the player piece is moving. | P1       |          |
|                                     |                                                              |          |          |
| Board Visual                        | Make board out of array values                               | P1       |          |
|                                     | Colour board (using 'colorize' gem)                          | Extra    |          |
|                                     | Display players name above board                             | P2       |          |
|                                     | Enable printing of board via method                          | P1       |          |
|                                     | Enable printing of all visuals via method                    | P1       |          |
|                                     |                                                              |          |          |
| Main Menu                           | Familiarise with gem "tty prompts"                           | P2       |          |
|                                     | create options: play , tutorial, exit                        | P2       |          |
|                                     | add functionality to each option                             | P2       |          |
|                                     | Link all necessary files to main menu                        | P2       |          |
|                                     | ASCII art for main menu title                                | Extra    |          |
|                                     |                                                              |          |          |
| Alternating turns and piece placing | Bind enter key to placing piece                              | P1       |          |
|                                     | functionality to key, place piece                            | P1       |          |
|                                     | functionality to key, change user turn                       | P1       |          |
|                                     | colour users name based off turn                             | extra    |          |
|                                     | handle error, if users input invalid restart their turn      | P1       |          |



### Control Flow Diagram 

![](JordonGoodsir-T1A3\docs\Pictures\Control_Flow.png)







 