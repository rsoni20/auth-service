package main

import (
	"testing"
)

func TestGreet(t *testing.T) {
	message := Greet()

	if message != "hello" {
		t.Errorf("Wrong message")
	}
}
