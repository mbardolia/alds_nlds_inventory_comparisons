select
  tb.name,
  null                as brokerage_id,
  tevo.ticket_section as section,
  tevo.ticket_row     as row,
  tevo.ticket_price   as price

from
            tickpick_brokers as tb
       join tevo                   on tevo.broker_name = tb.name
  left join tickpick               on tevo.remote_id   = tickpick.remote_id

where
  tickpick.brokerage_id is null
group by
  1,2
order by
  tb.name

