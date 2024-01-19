# Fantasy Football ETL Project 
## Objective 
- Review the unique qualifying statistical qualities of all potential NFL
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
    - Execute pick players function
        - Enter player first and last name (Player name must be capitolized) in the input field. 
        - Type 'done' if you only want to add a couple of players to your team. 
        - You are allowed to add up to 6 players on a team.  
        - A team name is required, do not use spaces. 
        - Once complete your team will automatically be output to a csv file in the output_data directory

## Ethical Considerations

## References
    - https://www.kaggle.com/datasets/jpmiller/nfl-competition-data?resource=download
    - https://www.kaggle.com/datasets/aryashah2k/beginners-sports-analytics-nfl-dataset/code

    
    

