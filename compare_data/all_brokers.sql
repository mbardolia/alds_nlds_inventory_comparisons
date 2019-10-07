select
  tickpick.brokerage_id,
  tb.name,
  count(*)                             as entries,
  sum( cast( tickpick.q as integer ) ) as tp_sum,
  sum( tevo.ticket_count )             as tevo_sum

from
  tickpick
  left join tickpick_brokers tb on tickpick.brokerage_id = tb.id
  left join tevo on tevo.remote_id = tickpick.remote_id
where
  1=1
group by
  1,2
order by
  tb.name

