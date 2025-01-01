open! Core

let () =
	Dream.run
	@@ Dream.logger
	@@ Dream.router [
		Dream.get "/" Nest.Handler.home
	]
