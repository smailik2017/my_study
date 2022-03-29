# frozen_string_literal: true

## Запускаем IRB вытаскиеваем от туда $LOAD_PATH
# Содержание скрипта для IRB (<path>/scripts.irb):
# puts $LOAD_PATH
####################
irb_lp = `irb --noprompt --noverbose script.irb`.lines.map!(&:chop)

# подгружаем то что делает "rails console"
require_relative '../config/environment'
# переменная $LOAD_PATH такая что и в окружении "rails console"
diff_lp = $LOAD_PATH - irb_lp
puts diff_lp
