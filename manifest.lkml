
## Connection Constants:
constant: GA4_CONNECTION {
  value: "e-commerce-dev"
  export: override_required
}

constant: GA4_SCHEMA {
  value: "analytics_216714406"
  export: override_optional
}

constant: GA4_TABLE_VARIABLE {
  value: "events_intraday_*"
  export: override_optional
}

constant: GA4_VIEW_SESSION {
  value: "e-commerce-dev1.google_analytics_pdt.vw_analytics*"
  export: override_optional
}
