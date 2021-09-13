package main

import (
	"log"

	"github.com/ZeroNull7/finance/cmd"
)

func main() {
	if err := cmd.RootCommand().Execute(); err != nil {
		log.Fatal(err)
	}
}
