import scala.io.Source

trait UncensoredString {
	val uncensored: String
}

trait Censor {
	self: UncensoredString =>
	def censored: String = {
		self.uncensored
			.split(" +")
			.map(w => replacements.getOrElse(w, w))
			.mkString(" ")
	}

	private lazy val replacements =
		Source.fromFile("replacements.txt")
		.getLines()
		.map(s => s.split(","))
		.map(ws => (ws(0), ws(1)))
		.toMap
}

class CensoredString(override val uncensored: String)
	extends UncensoredString
	with Censor

object CensorApp {
	def main(args: Array[String]) = {
		val input = 
			"I don't give a Shoot about Scala. " +
			"I prefer Haskell because it is Darn good."
		val cs = new CensoredString(input)
		val s1 = cs.uncensored
		val s2 = cs.censored
		println(s"Before: $s1")
		println(s"After:  $s2")
	}
}
