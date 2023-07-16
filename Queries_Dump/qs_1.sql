# Q1. Demographic Insights

select * from codebasics_contest.dim_cities;
select * from codebasics_contest.dim_respondents;
select * from codebasics_contest.fact_survey_responses;

#normal_join between dim_respondents and fact_survey_respondents table
SELECT *
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.fact_survey_responses b 
on a.Respondent_ID = b.Respondent_ID;

#1. Who prefers energy drink more? (male/female/non-binary?)
SELECT a.Gender, count(b.Consume_frequency) Times_Preferred
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.fact_survey_responses b 
on a.Respondent_ID = b.Respondent_ID 
where b.Consume_frequency <> 'Rarely'
group by a.Gender
order by count(b.Consume_frequency) desc;

#2. Which age group prefers energy drinks more?
SELECT a.Age Age_Group, count(b.Consume_frequency) Times_Preferred
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.fact_survey_responses b 
on a.Respondent_ID = b.Respondent_ID 
group by a.Age
order by count(b.Consume_frequency) desc;

# times preferred by 15-18 age group
SELECT a.Age Age_Group, count(b.Consume_frequency) Times_Preferred
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.fact_survey_responses b 
on a.Respondent_ID = b.Respondent_ID 
where b.Consume_frequency <> 'Rarely' and a.age = '15-18'
group by a.Age
order by count(b.Consume_frequency) desc;
#output 1211

select count(Age) from codebasics_contest.dim_respondents
where Age = '15-18';  #output = 1488

#3. Which type of marketing reaches the most Youth (15-30)?
SELECT b.Marketing_channels Marketing_channels, count(b.Marketing_channels) Occurence
FROM codebasics_contest.dim_respondents a 
join codebasics_contest.fact_survey_responses b 
on a.Respondent_ID = b.Respondent_ID 
where a.age between '15-18' and '19-30'  
group by b.Marketing_channels
order by count(b.Marketing_channels) desc;