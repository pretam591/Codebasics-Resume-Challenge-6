# Q4. Marketing Channels and Brand Awareness:

select * from codebasics_contest.dim_cities;
select * from codebasics_contest.dim_respondents;
select * from codebasics_contest.fact_survey_responses;

#a. Which marketing channel can be used to reach more customers?
select Marketing_channels, count(Marketing_channels) Times_reached_among_10000_consumers
from codebasics_contest.fact_survey_responses
group by Marketing_channels
order by count(Marketing_channels) desc;


/*b. How effective are different marketing strategies and channels in reaching our 
customers?*/

select Marketing_channels, count(Marketing_channels) Times_reached_among_980_CodeX_consumers
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX'
group by Marketing_channels
order by count(Marketing_channels) desc;

#based_on_limited_edition_packaging_strategy
select Limited_edition_packaging, count(Limited_edition_packaging) Times_reached_among_980_consumers
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX'
group by Limited_edition_packaging
order by count(Limited_edition_packaging) desc;