package keeper

import (
	"github.com/blackswanfoundry/origen/x/nameservice/types"
)

var _ types.QueryServer = Keeper{}
