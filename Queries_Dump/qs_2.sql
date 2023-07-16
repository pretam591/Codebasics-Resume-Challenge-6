# Q2. Consumer Preferences

select * from codebasics_contest.dim_cities;
select * from codebasics_contest.dim_respondents;
select * from codebasics_contest.fact_survey_responses;

#a. What are the preferred ingredients of energy drinks among respondents?
select Ingredients_expected Ingredients, count(Ingredients_expected) Times_Consumed
from codebasics_contest.fact_survey_responses
group by Ingredients_expected
order by count(Ingredients_expected) desc;

#b. What packaging preferences do respondents have for energy drinks?
select Packaging_preference Type_of_Packaging, count(Packaging_preference) Times_Preferred
from codebasics_contest.fact_survey_responses
group by Packaging_preference
order by count(Packaging_preference) desc;