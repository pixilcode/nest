open! Core

let home _req =
  Dream.html Nest_html.Pages.Home.html_str

let input_data _req =
  Dream.html "<p>Error: not complete yet</p>"