package keeper

import (
	"github.com/octopus-network/mock-grandpa/x/mockgrandpa/types"
)

var _ types.QueryServer = Keeper{}
