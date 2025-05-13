open! Core
open Tyxml.Html

module Home = struct
  let html =
    Template.std_page "Home" [
      h2 [txt "Welcome to Nest!"];
      a ~a:[a_href "/input-data"] [txt "Start"];
    ]

  let html_str = Util.html_to_str html
end