package kepler_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	keepertest "kepler/testutil/keeper"
	"kepler/testutil/nullify"
	"kepler/x/kepler"
	"kepler/x/kepler/types"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{
		Params: types.DefaultParams(),

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.KeplerKeeper(t)
	kepler.InitGenesis(ctx, *k, genesisState)
	got := kepler.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	// this line is used by starport scaffolding # genesis/test/assert
}
