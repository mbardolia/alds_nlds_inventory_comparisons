create table tickpick_brokers as
select
  distinct
  tickpick.brokerage_id as id,
  max(tevo.broker_name) as name
from
  tickpick
  left join tevo on tevo.remote_id = tickpick.remote_id
group by 1
order by
  tickpick.brokerage_id

