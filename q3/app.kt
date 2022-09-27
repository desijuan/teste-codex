class Rect(
  val i1: Int,
  val j1: Int,
  val i2: Int,
  val j2: Int
) {

  fun print() {
    println("(${this.i1}, ${this.j1}; ${this.i2}, ${this.j2})")
  }

  fun contains(i: Int, j:  Int): Boolean {
    if (i1 <= i && i <= i2 && j1 <= j && j <= j2) {
      return true
    } else {
      return false
    }
  }
}

fun computeIntersection (R1: Rect, R2: Rect): Int {
  var count: Int = 0
  for (j in R1.j1..R1.j2) {
    for (i in R1.i1..R1.i2) {
      if (R2.contains(i, j)) {
        count++
      }
    }
  }
  return count
}

fun main() {

  println()

  val R1 = Rect(1, 0, 3, 1)
  print("R1: ")
  R1.print()

  val R2 = Rect(0, 1, 5, 5)
  print("R2: ")
  R2.print()

  println()

  val intersectionArea: Int = computeIntersection(R1, R2)

  println(intersectionArea)

}


