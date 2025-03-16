file(REMOVE_RECURSE
  "../../generated/group_options.cpp"
  "../../generated/group_options.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/group-options.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
