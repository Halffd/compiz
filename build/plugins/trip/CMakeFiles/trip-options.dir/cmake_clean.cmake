file(REMOVE_RECURSE
  "../../generated/trip_options.cpp"
  "../../generated/trip_options.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/trip-options.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
