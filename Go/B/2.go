package main
import(
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var res []rune
	for _, r := range []rune(s) {
		switch r {
		case 'a', 'i', 'u', 'e', 'o':
		default:
			res = append(res, r)
		}
	}

	fmt.Println(string(res))
}
