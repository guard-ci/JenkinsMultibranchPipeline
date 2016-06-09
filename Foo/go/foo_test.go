package foo

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestFoo(t *testing.T) {
	foo := Foo{name: "name", address: "address"}

	assert.Equal(t, "name", foo.name)
	assert.Equal(t, "address", foo.address)
}
