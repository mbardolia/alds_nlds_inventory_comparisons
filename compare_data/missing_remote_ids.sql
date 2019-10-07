select
  tb.name,
  tickpick.brokerage_id,
  tickpick.sid as section,
  tickpick.r   as row,
  tickpick.p   as price

from
  tickpick
  join tickpick_brokers tb on tickpick.brokerage_id = tb.id
  left join tevo on tevo.remote_id = tickpick.remote_id
where
  tevo.remote_id is null
group by
  1,2
order by
  tb.name,
  section,
  row

