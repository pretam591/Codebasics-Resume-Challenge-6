# Q7. Product Development

/*a. Which area of business should we focus more on our product development? 
(Branding/taste/availability)*/
select Reasons_for_choosing_brands, count(Reasons_for_choosing_brands) Number_of_times
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX' and Reasons_for_choosing_brands not in ('Other', 'Effectiveness')
group by Reasons_for_choosing_brands
order by count(Reasons_for_choosing_brands);

select Reasons_preventing_trying, count(Reasons_preventing_trying)
from codebasics_contest.fact_survey_responses
where Current_brands = 'CodeX'
group by Reasons_preventing_trying
order by count(Reasons_preventing_trying) desc;