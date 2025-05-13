let html_to_str html =
  Format.asprintf "%a" (Tyxml.Html.pp ()) html