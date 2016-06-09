package godemo

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestPlus(t *testing.T) {

	assert.Equal(t, 2, Plus(1, 1))
}
