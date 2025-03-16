file(REMOVE_RECURSE
  "../../generated/stackswitch_options.cpp"
  "../../generated/stackswitch_options.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/stackswitch-options.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
