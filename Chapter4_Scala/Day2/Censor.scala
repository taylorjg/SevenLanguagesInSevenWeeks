trait HasString {
	val s: String
}

trait Censor {
	self: HasString =>
	def censored: String = {
		self.s
	}
}

class CensoredString(override val s: String) extends HasString with Censor {
}

object CensorApp {
	def main(args: Array[String]) = {
		val cs = new CensoredString("Hello")
		val s1 = cs.s
		val s2 = cs.censored
		println(s"Before: $s1; after: $s2")
	}
}
