package keeper_test

import (
	"context"
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/octopus-network/mock-grandpa/testutil/keeper"
	"github.com/octopus-network/mock-grandpa/x/mockgrandpa/keeper"
	"github.com/octopus-network/mock-grandpa/x/mockgrandpa/types"
)

func setupMsgServer(t testing.TB) (types.MsgServer, context.Context) {
	k, ctx := keepertest.MockgrandpaKeeper(t)
	return keeper.NewMsgServerImpl(*k), sdk.WrapSDKContext(ctx)
}
