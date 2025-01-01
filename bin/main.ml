open! Core

let () =
	Dream.run
	@@ Dream.logger
	@@ Dream.router [
		Dream.get "/" Nest.Handler.home;
    Dream.get "/input-data" Nest.Handler.input_data
	]
