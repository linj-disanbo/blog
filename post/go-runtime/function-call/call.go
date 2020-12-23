package main

func f2(a, b int) (int, int, int) {
	a2 := a * a
	b2 := b * b
	c := a2 + b2

	return a2, b2, c
}

func f1(a, b int) (int, int) {
	x1, x2, _ := f2(a, b)
	return x1, x2
}

func main() {
	print(f1(1, 2))
}
