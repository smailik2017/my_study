`echo 'puts $LOAD_PATH' > script.irb`
irb_lp = `irb --noprompt --noverbose script.irb`.lines.map!(&:chop)
`rm script.irb`

require_relative "task_1_proj/config/application"

rails_c_lp = $LOAD_PATH

diff_lp = rails_c_lp - irb_lp
p diff_lp
