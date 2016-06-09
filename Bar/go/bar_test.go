package bar

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestBar(t *testing.T) {
	bar := Bar{x: 1, y: 2}

	assert.Equal(t, 1, bar.x)
	assert.Equal(t, 2, bar.y)
}
