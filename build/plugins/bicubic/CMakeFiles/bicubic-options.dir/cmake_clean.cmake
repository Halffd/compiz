file(REMOVE_RECURSE
  "../../generated/bicubic_options.cpp"
  "../../generated/bicubic_options.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/bicubic-options.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
