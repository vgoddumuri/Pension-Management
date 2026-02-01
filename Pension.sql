create database pensions;

use pensions;

select * from pensions;

--  Average pension payout by region

select region,avg(monthly_pension) as average_pension_payout from pensions group by  region;

-- Top 10 pensioners by payout

select beneficiary_name,monthly_pension from pensions where monthly_pension is not null order by  monthly_pension desc
limit 10;

-- Identifying employees nearing retirement.

-- This query uses dynamic dates (CURDATE) and assumes a live dataset.
-- If the data is historical (e.g., from a past year), the query may return 0 rows.

select beneficiary_name,retirement_date from pensions where retirement_date between CURDATE()
and DATE_ADD(CURDATE(), interval 1 year) order by  retirement_date;

-- Pension type and status distributions.

select pension_type,pension_status,COUNT(*) as total_pensioners from pensions where pension_type is not null and pension_status is not null
group by pension_type, pension_status;

-- Bucketing pensions based on the newly calculated years_of_service to analyze tenure vs. payout

select 
 case
   when years_of_service between 0 and 10 then '0-10 years'
   when years_of_service between 11 and 20 then '11-20 years'
   when years_of_service between 21 and 30 then '21-30 years'
   else '30+ years'
end as service_bucket,
count(*) as total_pensioners,
round(avg(monthly_pension),2) as avg_monthly_pension 
from pensions where years_of_service is not null and monthly_pension is not null
group by service_bucket order by service_bucket;


