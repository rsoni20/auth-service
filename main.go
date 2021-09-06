package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("auth-srevice"))
	})
	err := http.ListenAndServe(":"+getHttpPort(), nil)
	if err != nil {
		log.Fatal("FAILED TO START SERVER")
	}
}

func getHttpPort() string {
	httpPort := os.Getenv("HTTP_PORT")
	if httpPort == "" {
		httpPort = "8081"
	}
	return httpPort
}

func Greet() string {
	return "hello"
}
