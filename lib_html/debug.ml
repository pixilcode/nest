let html_to_string html_doc =
  Format.asprintf "%a" (Tyxml.Html.pp ()) html_doc