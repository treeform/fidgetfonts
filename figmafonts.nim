import puppy, jsony, json, print

let jsonData = fetch("https://static.figma.com/font/index_b4f1aa7b11a872268847403f38a112ed.json")
let f = fromJson(jsonData)

for font in f["files"]:
  let
    name = font[0].getStr()
    maxVersion = font[1].getInt()

  # for version in 1 .. maxVersion:
  #   let psName = name & "_" & $version
  #   print name, version
  #   writeFile(psName & ".ttf", fetch("https://static.figma.com/font/" & psName & ".ttf"))

  print name
  writeFile(name & ".ttf", fetch("https://static.figma.com/font/" & name & "_" & $maxVersion & ".ttf"))
