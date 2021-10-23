package mockgrandpa_test

import (
	"testing"

	keepertest "github.com/octopus-network/mock-grandpa/testutil/keeper"
	"github.com/octopus-network/mock-grandpa/x/mockgrandpa"
	"github.com/octopus-network/mock-grandpa/x/mockgrandpa/types"
	"github.com/stretchr/testify/require"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.MockgrandpaKeeper(t)
	mockgrandpa.InitGenesis(ctx, *k, genesisState)
	got := mockgrandpa.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	// this line is used by starport scaffolding # genesis/test/assert
}
