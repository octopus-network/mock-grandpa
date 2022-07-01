package keeper_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	testkeeper "kepler/testutil/keeper"
	"kepler/x/kepler/types"
)

func TestGetParams(t *testing.T) {
	k, ctx := testkeeper.KeplerKeeper(t)
	params := types.DefaultParams()

	k.SetParams(ctx, params)

	require.EqualValues(t, params, k.GetParams(ctx))
}
