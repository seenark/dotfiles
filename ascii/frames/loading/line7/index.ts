const file = Bun.file("./00")
const baseFile = await file.text()
const lineIndex = 6
const base: string = baseFile.split("\n")[lineIndex]!

// :::Code:Sook:::::
const line5Chars = Array.from({ length: 17 }).fill(":").map((d, i) => {
  switch (i) {
    case 4: return "C"
    case 5: return "o"
    case 6: return "d"
    case 7: return "e"
    case 9: return "S"
    case 10: return "o"
    case 11: return "o"
    case 12: return "k"
    default: return d
  }
})

const startIndex = 8
const endIndexStart = 25
const endIndexEnd = 36
const startText = base.slice(0, startIndex)
const endText = base.slice(endIndexStart, 36)
const middleText = base.slice(startIndex, endIndexStart)


const allLine5 = line5Chars.map((char, i) => {
  const middle = middleText[1]?.split("")
  console.log(middle)
  const end = middle?.slice(i + 1, line5Chars.length - 1)!
  const start = line5Chars.slice(0, i + 1)
  const endText = base.slice(startIndex + i + 1, endIndexEnd)
  const newLine5 = [startText, ...start, ...end, endText].join("")
  return newLine5
})

console.log(allLine5)

const images = allLine5.map(line5 => {
  const newFile = baseFile.split("\n")
  newFile[lineIndex] = line5
  return newFile.join("\n")
})

console.log(images.join("\n"))

images.forEach((img, i) => {
  Bun.write((i + 1).toString().padStart(3, "0"), img)
})



// const newDots = allLine4.map(line4 => {
//   console.log(line4)
//
//   const newEmpty = empty.split("\n")
//   newEmpty[3] = line4 || ""
//
//   return newEmpty.join("\n")
// })
//
//
// newDots.forEach((d, i) => {
//   console.log(d)
//   Bun.write((i + 1).toString().padStart(3, "0"), d)
// })
