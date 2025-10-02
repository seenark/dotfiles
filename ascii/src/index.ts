import { readdir } from "node:fs/promises"
import { animates } from './animates';

// Example usage with 7 frames
const frames: string[] = [
  // Frame 1
  `
    ╭─────╮
    │  o  │
    │ \\|/ │
    │  |  │
    │ / \\ │
    ╰─────╯
    Frame 1
    `,

  // Frame 2
  `
    ╭─────╮
    │ \\o/ │
    │  |  │
    │  |  │
    │ / \\ │
    ╰─────╯
    Frame 2
    `,

  // Frame 3
  `
    ╭─────╮
    │  o─ │
    │ /|  │
    │  |  │
    │ / \\ │
    ╰─────╯
    Frame 3
    `,

  // Frame 4
  `
    ╭─────╮
    │  o  │
    │ /|\\ │
    │  |  │
    │ < > │
    ╰─────╯
    Frame 4
    `,

  // Frame 5
  `
    ╭─────╮
    │  o  │
    │ \\|/ │
    │  |  │
    │  /\\ │
    ╰─────╯
    Frame 5
    `,

  // Frame 6
  `
    ╭─────╮
    │  O  │
    │ \\|/ │
    │  |  │
    │ | | │
    ╰─────╯
    Frame 6
    `,

  // Frame 7
  `
    ╭─────╮
    │  o  │
    │ ─|─ │
    │  |  │
    │ _|_ │
    ╰─────╯
    Frame 7
    `
];

const src = "~/.dotfiles/ascii/src"

const apple = await Bun.file(`${src}/frames/apple/00`).text()

const folders = Array.from({ length: 7 }).fill(0).map((_, i) => i + 4).map(d => `${src}/frames/loading/line${d}`)

const filePathsPromises = folders.map(folder => readdir(folder).then(
  files => files.filter(d => d !== "index.ts" && d !== "00").sort((a, b) => a.localeCompare(b)).map(path => `${folder}/${path}`)
))
const filePaths = await Promise.all(filePathsPromises).then(paths => paths.flat())
const loadingFrames = await Promise.all(filePaths.map(path => Bun.file(path).text()))

const blinkingFrames = await Promise.all([Bun.file(`${src}/frames/blinking/001`).text(), Bun.file(`${src}/frames/blinking/002`).text()])


animates.start([
  {
    frames: loadingFrames,
    fps: 40
  },
  {
    frames: Array.from({ length: 10 }).fill(0).map((_, i) => {
      if (i % 2 === 0) return blinkingFrames[0]
      return blinkingFrames[1]
    }),
    fps: 3

  },
  {
    frames: Array.from({ length: 3 }).fill(0).map(() => apple),
    fps: 1,
  }
])

