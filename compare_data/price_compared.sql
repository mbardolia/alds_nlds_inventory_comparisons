
select
  tickpick.brokerage_id,
  tb.name,
  tickpick.sid as section,
  tickpick.r   as row,
  tevo.ticket_price,
  tickpick.p,
  case when tevo.ticket_price > 0 then round( ( tickpick.p / tevo.ticket_price ), 2) end as compared
from
  tickpick
  join tickpick_brokers tb on tickpick.brokerage_id = tb.id
  join tevo on tevo.remote_id = tickpick.remote_id  

group by
  1,2,3,4,5,6

order by
  tb.name,
  compared;

