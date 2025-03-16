file(REMOVE_RECURSE
  "../../generated/reflex_options.cpp"
  "../../generated/reflex_options.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/reflex-options.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
