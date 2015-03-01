object FoldLeftApp {
	def main(args: Array[String]) = {
		val ss = Array("one", "two", "three")
		ss.foreach(println)
		println(ss.foldLeft(0)((a : Int, s: String) => a + s.length))
		println(ss.foldLeft(0)((a, s) => a + s.length))
		println(ss.foldLeft(0)(_ + _.length))
	}
}
