regex = /[0]+^[0-9]+$/


str = '0123'

p str.match?(regex)

# Test.assert_equals((regex=~'fjd3IR9')==0, true)
# Test.assert_equals((regex=~'ghdfj32')==0, false)
# Test.assert_equals((regex=~'DSJKHD23')==0, false)
# Test.assert_equals((regex=~'dsF43')==0, false)
# Test.assert_equals((regex=~'4fdg5Fj3')==0, true)
# Test.assert_equals((regex=~'DHSJdhjsU')==0, false)
# Test.assert_equals((regex=~'fjd3IR9.;')==0, false)
# Test.assert_equals((regex=~'fjd3  IR9')==0, false)






