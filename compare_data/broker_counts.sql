.mode tabs

select
  tb.name,
  sum( cast( tickpick.q as integer ) ) as tp_sum,
  sum( tevo.ticket_count ) as tevo_sum
from
  tickpick
  join tickpick_brokers tb on tickpick.brokerage_id = tb.id
  join tevo on tevo.broker_name = tb.name
group by
  1
order by
  1;




