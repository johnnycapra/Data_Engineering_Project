# Fantasy Football ETL Project 
## Objective 

Review the unique qualifying statistical qualities of all potential NFL
prospects and comprise a team you believe is most suitable to win it all!

## Instructions 
1. Run Data_cleaning.ipynb
    - this will output injury_cut, injury_cleaned and rushing_cleaned csv files to the output_data directory
    - Run the fantasy_schema.sql file in your pgAdmin application. (found in db_schema_ERD directory)
    - Import rushing_cleaned.csv into rushing table.
    - Import either injury_cut.csv or injury_cleaned.csv into the injury table.
        - injury_cleaned.csv removes all null values and duplicates from the injury dataframe.
        - some may want to injury_cut to see which players are more injury prone. 
2. Run Build_Team.ipynb 
    - In this file you will see a list of players with top rushing yards sorted by their position. The reason for this is for anyone to quickly get a list of top offensive players to add to a team.
    - For more complex searches and sorting I recommend using the postgres tables created above. The dataframes created in Build_Team are for ease of use functionality. 
    - Setup psycopg2 db connection with your database info in the pick_players function.
        ```python
        conn = psycopg2.connect(
            dbname = dbname,
            user = user,
            password = password,
            host = host,
            port = port
            )
        ```
    - Execute PickFantasyPlayers:
        - Enter player first and last name (Player name must be capitolized) in the input field. 
        - You are allowed to add up to 6 players on a team. 
        - Once done adding team members click the finish and push button. 
        - A team name is required, do not use spaces. 
        - Once complete your team will automatically be output to a csv file in the output_data directory and to your postgresql DB.

## Ethical Considerations

We took great care in the ethical considerations throughout the course of this project. Through extensive research, we were able to gain a greater understanding of the battles over time that the industry, players, and sport as a whole has had to endure. Many of these struggles and battles were evident across all levels of the sport even though for our project we were dealing specifically with the professional level under the shield of the National Football League (NFL). This shield alone, for all its likeness and image, constitutes a substantial amount of trademark and proprietary rights. However, it is under the strong belief of this group that we have tread the ethical line diligently while looking for this data. While the NFL is a private entity, the service provided (aka the sport and entertainment of American Football) is very public. Its reach goes far beyond the NFL to schools, children, clothing brands, food and supplements, training styles, and many more influences. Because of this, we determined the public knowledge and displaying of player statistics within a game was of no jurisdiction. That this information was not something to be owned, but rather observed. From an uninterested passerby to an avid fan, or a professional scout during the season, everyone has equal observational capabilities and rights to record information of the game. You can sit in the bleacher or watch from home and tally every attempt, pass, yard, rush, along with any other measurable static. When we take this notion and compound it with our clear intent, it is clear we are operating and navigating through the data ethically. With zero intent to participate in any form of distribution nor plans to profit financially in any way shape or form from the use of this information, we were able to determine without a fraction of a doubt that our motivations are pure in their intent to understand, learn, and observe. Thus, our actions to be unequivocally ethical by those reflections.

## References
- https://www.kaggle.com/datasets/jpmiller/nfl-competition-data?resource=download
- https://www.kaggle.com/datasets/aryashah2k/beginners-sports-analytics-nfl-dataset/code
- https://docs.python.org/3/library/tkinter.html
- https://tkdocs.com/tutorial/index.html

    
    

