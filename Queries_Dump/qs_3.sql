# Q3. Competition Analysis

select * from codebasics_contest.dim_cities;
select * from codebasics_contest.dim_respondents;
select * from codebasics_contest.fact_survey_responses;

# Who are the current market leaders?
select Current_brands, count(Current_brands) Sales_among_10000_respondents
from codebasics_contest.fact_survey_responses
group by Current_brands
order by count(Current_brands) desc;

# What are the primary reasons consumers prefer those brands over ours?
select Current_brands from codebasics_contest.fact_survey_responses where
(select Current_brands, Reasons_for_choosing_brands, count(Reasons_for_choosing_brands)
from codebasics_contest.fact_survey_responses
group by Reasons_for_choosing_brands
order by count(Reasons_for_choosing_brands) desc);


