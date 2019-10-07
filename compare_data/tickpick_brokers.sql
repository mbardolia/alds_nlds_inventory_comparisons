create table tickpick_brokers as
select
  distinct
  tickpick.brokerage_id as id,
  tevo.broker_name as name
from
  tickpick
  join tevo on tevo.remote_id = tickpick.remote_id
order by
  tickpick.brokerage_id

