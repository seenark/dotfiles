

async function main() {
  const file = Bun.file("./00")
  const empty = await file.text()
  console.log(empty.split("\n"))

  const allLine4 = Array.from({ length: 18 }).fill(0).map((_, i) => {
    const line4 = empty.split("\n")[3]?.split("")

    Array.from({ length: i }).fill(0).forEach((_, i) => {
      if (line4 === undefined) return
      line4[i + 8] = "."
    })

    return line4?.join("")
  })


  const newDots = allLine4.map(line4 => {
    console.log(line4)

    const newEmpty = empty.split("\n")
    newEmpty[3] = line4 || ""

    return newEmpty.join("\n")
  })


  newDots.forEach((d, i) => {
    console.log(d)
    Bun.write((i + 1).toString().padStart(3, "0"), d)
  })

}

main()

