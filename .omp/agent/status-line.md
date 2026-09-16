OMP custom status line ใช้ segment ID ใน leftSegments / rightSegments

 Config ครบ

 ```json
{
  "statusLine": {
    "preset": "custom",
    "separator": "powerline-thin",

    "leftSegments": ["model", "path", "git"],
    "rightSegments": [
      "token_in",
      "token_out",
      "token_rate",
      "cache_read",
      "cache_write",
      "cost",
      "context_pct",
      "time_spent"
    ],

    "segmentOptions": {
      "model": {
        "showThinkingLevel": true
      },
      "path": {
        "abbreviate": true,
        "maxLength": 40,
        "stripWorkPrefix": true
      },
      "git": {
        "showBranch": true,
        "showStaged": true,
        "showUnstaged": true,
        "showUntracked": true
      },
      "time": {
        "format": "24h",
        "showSeconds": false
      }
    },

    "showHookStatus": true,
    "sessionAccent": true,
    "transparent": false,
    "compactThinkingLevel": true,
    "contextLine": "embedded"
  }
}
 ```

 Config หลัก

### statusLine.preset

 ค่าที่ใช้ได้:

- default — status line ปกติ
- minimal — path, git
- compact — model, git, cost, context
- full — token, cache, cost, context, time
- nerd — ข้อมูลสูงสุด ใช้ Nerd Font icons
- ascii — ใช้ข้อความ ASCII
- custom — ใช้ leftSegments และ rightSegments ที่กําหนดเอง

 leftSegments และ rightSegments มีผลจริงเมื่อใช้ preset: "custom"

### statusLine.separator

- powerline — ลูกศร Powerline แบบหนา
- powerline-thin — ลูกศร Powerline แบบบาง
- slash — /
- pipe — │
- block — block separator
- none — เว้นช่องว่าง
- ascii — separator แบบ ASCII

### statusLine.leftSegments

 รายการ segment ฝั่งซ้าย

### statusLine.rightSegments

 รายการ segment ฝั่งขวา

### statusLine.segmentOptions

 ตัวเลือกเฉพาะ segment:

 ```json
{
  "segmentOptions": {
    "model": {
      "showThinkingLevel": true
    },
    "path": {
      "abbreviate": true,
      "maxLength": 40,
      "stripWorkPrefix": true
    },
    "git": {
      "showBranch": true,
      "showStaged": true,
      "showUnstaged": true,
      "showUntracked": true
    },
    "time": {
      "format": "12h",
      "showSeconds": true
    }
  }
}
 ```

- model.showThinkingLevel — แสดงระดับ thinking
- path.abbreviate — ย่อ path
- path.maxLength — จํากัดความยาว path
- path.stripWorkPrefix — ตัด prefix ของ project/worktree
- git.showBranch — แสดง branch
- git.showStaged — แสดงจํานวน staged files
- git.showUnstaged — แสดงจํานวน unstaged files
- git.showUntracked — แสดงจํานวน untracked files
- time.format — 12h หรือ 24h
- time.showSeconds — แสดงวินาที

### statusLine.showHookStatus

 แสดงสถานะจาก hook ใต้ status line

- true — แสดง
- false — ซ่อน

 Default: true

### statusLine.sessionAccent

 ใช้สีจาก session name กับ editor border และช่องว่าง status line

 Default: true

### statusLine.transparent

 ใช้ background ของ terminal แทนสี status line จาก theme

- true — โปร่งใส
- false — ใช้ theme background

 Default: false

 เมื่อเปิด true จะตัด Powerline end caps ออก

### statusLine.compactThinkingLevel

 แสดง thinking level เป็น icon เดียวบน model segment แทนข้อความต่อท้าย

 Default: true

### statusLine.contextLine

 เส้น context ระหว่างกลุ่มซ้ายและขวา ใช้กับ box composer:

- off — เส้นสีคงที่
- percentage — ส่วนที่ใช้เป็นสี accent ส่วนที่เหลือ dim
- annotated — เพิ่มเปอร์เซ็นต์และ marker boundary
- embedded — เพิ่มเปอร์เซ็นต์และขนาด context ในเส้น

 Default: embedded

 ────────────────────────────────────────────────────────────────────────────────

 Segment ID ทั้งหมด

### Identity และสถานะ

- pi — OMP logo; ตอนทํางานแสดง spinner และเวลาของ turn; ตอนดู subagent แสดง agent ID
- status — สถานะจาก extension/hook
- model — ชื่อ model, thinking level, fast-mode/advisor badge
- mode — Plan, Prewalk, Goal, Vibe หรือ Loop mode; ปกติไม่แสดง
- path — project path; ย่อ path และทํา hyperlink
- git — branch และจํานวนไฟล์ staged/unstaged/untracked
- pr — หมายเลข Pull Request ปัจจุบัน พร้อม hyperlink
- subagents — จํานวน subagent ที่กําลังทํางาน
- session — session ID แบบย่อ 8 ตัวอักษร
- session_name — ชื่อ session
- hostname — hostname เครื่อง
- collab — collaboration role และจํานวน participant

### Token และ cache

- token_in — cumulative non-cached input tokens
- token_out — cumulative output tokens
- token_total — cumulative total โดย:
  - รวม input
  - รวม output
  - รวม cacheWrite
  - รวม orchestration input/output
  - ไม่รวม cacheRead
- token_rate — output tokens/sec
- cache_read — cumulative prompt-cache read tokens
- cache_write — cumulative prompt-cache write tokens
- cache_hit — cache hit percentage

 token_in, token_out, token_total เป็นยอดสะสมของ session ไม่ใช่ per-turn row

### Cost และ context

- cost — cost รวม, premium requests, advisor cost หรือ subscription marker
- context_pct — context usage percentage พร้อมสีเตือนและ auto-compaction marker
- context_total — ขนาด context window เป็น token
- usage — provider quota เช่น:
  - 5 ชั่วโมง
  - รายวัน
  - 7 วัน
  - รายเดือน
  - reset time

 usage หมายถึง provider quota ไม่ใช่ token usage ของ session

### เวลา

- time_spent — เวลาที่ agent ทํางานจริงทั้ง session; ไม่รวมช่วง idle
- time — เวลานาฬิกาปัจจุบัน

 ────────────────────────────────────────────────────────────────────────────────

 Preset ที่ OMP กําหนดมาให้

### default

 ```text
left:  pi model mode collab path git pr context_pct cost
right: session_name
 ```

### minimal

 ```text
left:  path git
right: session_name mode context_pct
 ```

### compact

 ```text
left:  model mode git pr
right: session_name cost context_pct
 ```

### full

 ```text
left:  pi hostname model mode path git pr subagents
right: session_name cache_hit token_in token_out token_rate
       cache_read cost context_pct time_spent time
 ```

### nerd

 ```text
left:  pi hostname model mode path git pr session subagents
right: session_name token_in token_out cache_read cache_write
       token_rate cost context_pct context_total time_spent time
 ```

### ascii

 ```text
left:  model mode path git pr
right: session_name token_total cost context_pct
 ```

### custom

 ต้องกําหนดเอง:

 ```json
{
  "statusLine": {
    "preset": "custom",
    "leftSegments": ["model", "path"],
    "rightSegments": ["token_in", "token_out", "token_rate"]
  }
}
 ```

 Config สําหรับ token โดยตรง

 ```json
{
  "statusLine": {
    "preset": "custom",
    "leftSegments": ["model", "path", "git"],
    "rightSegments": [
      "token_in",
      "token_out",
      "token_rate"
    ]
  }
}
 ```

 เพิ่ม cache:

 ```json
{
  "statusLine": {
    "preset": "custom",
    "rightSegments": [
      "token_in",
      "token_out",
      "cache_read",
      "cache_write",
      "cache_hit",
      "token_rate"
    ]
  }
}
 ```

 ตัวอย่าง per-turn ที่มี timestamp เช่น:

 ```text
⤵ 1.2K  ⤴ 3.1K  💾 138K  ⏱ 1.8s  ⚡ 42.8/s
 ```

 ไม่ใช่ custom status line segment โดยตรง ต้องเปิดแยก:

 ```json
{
  "display": {
    "showTokenUsage": true
  }
}
 ```

 อ้างอิง OMP source: settings-schema.ts:239-265, 769-874, status-line/presets.ts, status-line/segments.ts:144-911.
