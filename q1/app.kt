fun filterCNPJ(cnpj: String): String? {

    val NumberOnlyRegEx = Regex("^\\d{14}$")
    val FormattedRegEx = Regex("^\\d{2}\\.\\d{3}\\.\\d{3}\\/\\d{4}-\\d{2}$")

    if (NumberOnlyRegEx.matches(cnpj)) {
        println("Number only CNPJ")
        return cnpj
    } else if (FormattedRegEx.matches(cnpj)) {
        println("Formatted CNPJ")
        return cnpj.filter { it.isDigit() }
    } else {
        return null
    }
}

fun calculateDigits(cnpj: String?): String? {

    if (cnpj == null) {
        return null
    }

    val seq: String = "5678923456789"

    var sum_x: Int = 0
    var sum_y: Int = 0

    for (i in 0..11){
        val m_x: Int = cnpj[i].digitToInt()*seq[i+1].digitToInt()
        sum_x = sum_x + m_x
        val m_y: Int = cnpj[i].digitToInt()*seq[i].digitToInt()
        sum_y = sum_y + m_y
    }

    val x: Int = if (sum_x % 11 == 10) 0 else sum_x % 11

    val m_y: Int = x * seq[12].digitToInt()
    sum_y = sum_y + m_y

    val y: Int = if (sum_y % 11 == 10) 0 else sum_y % 11

    return "$x$y"
}

fun validateCNPJ(cnpj: String): Boolean {

    val filteredCNPJ: String? = filterCNPJ(cnpj)

    val digits: String? = calculateDigits(filteredCNPJ)

    if (digits == null) {
        println("Invalid CNPJ - Bad format")
        return false
    } else if (digits[0] != filteredCNPJ?.get(12) || digits[1] != filteredCNPJ.get(13)) {
        println("Invalid")
        return false
    } else {
        println("Valid")
        return true
    }
}

fun main() {

    println()
    println("Enter \"Q\" to EXIT")
    println()

    while (true) {

        print("CNPJ: ")
        val cnpj = readln()

        if (cnpj == "Q") {
            println()
            println("Goodbye!")
            println()
            break
        }

        println()

        validateCNPJ(cnpj)

        println()
    }
}