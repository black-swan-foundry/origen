package main

import (
	"os"

	"github.com/BlackSwanFoundry/origen/app"
	bsfconfig "github.com/BlackSwanFoundry/origen/config"
	svrcmd "github.com/cosmos/cosmos-sdk/server/cmd"
	"github.com/tendermint/spm/cosmoscmd"
)

func main() {
	rootCmd, _ := cosmoscmd.NewRootCmd(
		bsfconfig.Name,
		bsfconfig.AccountAddressPrefix,
		app.DefaultNodeHome,
		bsfconfig.Name,
		app.ModuleBasics,
		app.New,
		// this line is used by starport scaffolding # root/arguments
	)
	if err := svrcmd.Execute(rootCmd, app.DefaultNodeHome); err != nil {
		os.Exit(1)
	}
}
