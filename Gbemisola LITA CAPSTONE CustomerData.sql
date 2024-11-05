select * from CustomerData

select Region,
count(CustomerId) as Total_Customers from CustomerData
group by Region

select top 1 SubscriptionType,
COUNT(SubscriptionType) as number_of_customer from CustomerData
group by SubscriptionType

select CustomerID, CustomerName, SubscriptionType,SubscriptionStart,
SubscriptionEnd from CustomerData
where canceled = 1
and SubscriptionEnd >=
dateadd(month, -6, Getdate())

select AVG([Subscription Duration]) from CustomerData

select CustomerID, CustomerName,SubscriptionType,SubscriptionStart,
SubscriptionEnd from CustomerData
where [Subscription Duration] > 366

select SubscriptionType,
SUM(revenue) as Total_revenue from CustomerData
group by SubscriptionType

select top 3 region,
count(canceled) as Subscription_cancellation from CustomerData
where Canceled = 1
group by Region

select
count(case when canceled = 0
then 1 end) as active,
count(case when canceled = 1
then 1 end) as canceled from CustomerData