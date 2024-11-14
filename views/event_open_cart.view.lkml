view: event_open_cart {
derived_table: {
  sql: -- use existing sessions in `e-commerce-dev1.google_analytics_pdt.LR_58VMV1700656759044_sessions`
with carrinhos_abertos as (SELECT
    sessions.ga_session_id || sessions.user_pseudo_id AS chave,
    sessions.ga_session_id,
    sessions.user_pseudo_id,
    COUNT(DISTINCT CASE WHEN (( events.event_name  ) = 'add_to_cart') THEN ( concat(sessions.user_pseudo_id ,sessions.ga_session_id)   )  ELSE NULL END) AS add_carrinho,
    COUNT(DISTINCT CASE WHEN (( events.event_name  ) = 'purchase') THEN ( concat(sessions.user_pseudo_id ,sessions.ga_session_id)   )  ELSE NULL END) AS verifica_compra,
    COUNT(DISTINCT CASE WHEN (( events.ecommerce.transaction_id  ) <> '(not set)' OR ( events.ecommerce.transaction_id  ) IS NULL) THEN events.ecommerce.transaction_id  ELSE NULL END) AS transacao
FROM `e-commerce-dev1.google_analytics_pdt.vw_analytics` AS sessions
LEFT JOIN UNNEST(sessions.event_data) as events with offset as event_row
GROUP BY
    1, 2, 3)

select *
from carrinhos_abertos
where carrinhos_abertos.add_carrinho > 0
and carrinhos_abertos.verifica_compra = 0 ;;
}

dimension: chave {
  type: string
  hidden: yes
  primary_key: yes
}

dimension: ga_session_id {
  type: string
  hidden: yes
}

dimension: user_pseudo_id {
  type: string
  hidden: yes
}

measure: carrinho_aberto {
  label: "Carrinhos em Aberto"
  type: count
}

# dimension: add_carrinho {
#   type: number
#   hidden: yes
#   sql: ${TABLE}.add_carrinho ;;
# }

# dimension: verifica_compra {
#   type: number
#   hidden: yes
#   sql: ${TABLE}.verifica_compra ;;
# }

# measure: carrinho_aberto {
#   label: "Carrinhos em Aberto"
#   type:  count_distinct
#   sql: CASE WHEN ${add_carrinho} > 0 and ${verifica_compra} is null THEN  ${chave} ELSE NULL END;;
# }


}
