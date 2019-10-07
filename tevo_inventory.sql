

select
  irv.broker_name,
  tg.remote_id,
  ticket_section,
  ticket_row,
  ticket_count,
  ticket_price,
  event_name,
  event_occurs_at::date
from
  insights.inventory_report_view irv
  join ticket_groups tg on irv.ticket_group_id = tg.id
where
  category_name = 'MLB'
  and event_occurs_at between '2019-10-01' and '2019-10-031'
order by
  irv.broker_name,
  event_occurs_at,
  event_name,
  tg.remote_id


