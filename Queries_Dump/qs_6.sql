# Q6. Purchase Behavior:
select * from codebasics_contest.fact_survey_responses;

#a. Where do respondents prefer to purchase energy drinks?
select Purchase_location, count(Purchase_location) Times_Purchased
from codebasics_contest.fact_survey_responses
group by Purchase_location
order by count(Purchase_location) desc;

/*b. What are the typical consumption situations for energy drinks among 
respondents?*/
select Typical_consumption_situations, count(Typical_consumption_situations) Number_of_times
from codebasics_contest.fact_survey_responses
group by Typical_consumption_situations
order by count(Typical_consumption_situations) desc;


/*c. What factors influence respondents' purchase decisions, such as price range and 
limited edition packaging?*/
select Packaging_preference, Price_range Number_of_times
from codebasics_contest.fact_survey_responses
group by Price_range
order by count(Price_range) desc;

select Limited_edition_packaging, count(Limited_edition_packaging) Number_of_times
from codebasics_contest.fact_survey_responses
group by Limited_edition_packaging
order by count(Limited_edition_packaging) desc;