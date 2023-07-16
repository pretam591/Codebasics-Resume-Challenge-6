# Q5. Brand Penetration:

select * from codebasics_contest.dim_cities;
select * from codebasics_contest.dim_respondents;
select * from codebasics_contest.fact_survey_responses;

#a. What do people think about our brand? (overall rating)
select General_perception, count(General_perception) 
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX'
group by General_perception
order by count(General_perception) desc;

#brand_perception
select Brand_perception, count(Brand_perception) Consumer_Rating
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX'
group by Brand_perception
order by count(Brand_perception) desc;

#b. Which cities do we need to focus more on?
SELECT b.City, count(b.City) Sales
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.dim_cities b 
on a.City_ID = b.City_ID 
join codebasics_contest.fact_survey_responses c
on  a.Respondent_ID = c.Respondent_ID
where c.Current_brands = 'CodeX'
group by b.City
order by count(b.City);