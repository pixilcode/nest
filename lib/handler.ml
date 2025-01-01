open! Core

let home _req =
  let html_doc = Nest_html.Template.std_page "Hello world" in
  let html_doc_str = Nest_html.Debug.html_to_string html_doc in
  Dream.html html_doc_str