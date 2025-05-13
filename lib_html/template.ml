open! Core
open Tyxml.Html

let html_page
  ?(scripts : string list = [])
  ?(stylesheets : string list = [])
  ~(page_title : string)
  body_content =

    let meta_tags = [
      meta ~a:[a_charset "UTF-8"] ();
      meta ~a:[a_name "viewport"; a_content "width=device-width, initial-scale=1.0"] ()
    ] in

    let scripts_html_list =
      List.map scripts ~f:(fun script_loc -> script ~a:[a_src script_loc] (txt ""))
    in

    let stylesheets_html_list =
      List.map stylesheets ~f:(fun stylesheet_loc -> link ~rel:[`Stylesheet] ~href:stylesheet_loc ())
    in

    let head_tags = List.concat [
      meta_tags;
      scripts_html_list;
      stylesheets_html_list
    ] in

    html
      (head
        (title (txt page_title))
        head_tags
      )

      (body body_content)

let std_page title main_content =
  html_page
    ~page_title:title
    [
      header [
        h1 [txt "Nest"]
      ];

      main main_content
    ]