# Compiz Static Switcher Modifications

This project contains modifications to the Compiz static switcher plugin to enhance its functionality and usability.

## Features Added

### 1. Larger Default Window Previews
- Default preview width increased from 150px to 400px
- Default preview height increased from 150px to 300px
- Total switcher area increased from 2/3 to 90% of monitor

### 2. Configurable Dimensions
- Individual configuration options for preview width, height, and border spacing
- Preview width: 50-800px range (default: 400px)
- Preview height: 50-600px range (default: 300px)
- Border spacing: 0-50px range (default: 15px)

### 3. Close Buttons
- Close buttons on each window preview (red with white cross)
- Configurable close button size (8-32px, default: 16px)
- Option to enable/disable close buttons
- Click on close button to close the corresponding window

### 4. Enhanced Switch Behavior
- Option to switch immediately when window is selected or only when Alt is released
- New "Highlight Only" mode (enabled by default):
  - Only highlights the selected window border
  - Does not activate the window until Alt is released
  - Yellow border for better visibility in highlight-only mode

### 5. Keyboard Shortcuts
- Ctrl+Alt+W to close the currently selected window in switcher

## Installation

### Prerequisites
- CMake
- GCC/G++
- Compiz development headers
- X11 development libraries

### Using the Build Script

The repository includes a build script that automates the entire process:

```bash
# Make the script executable
chmod +x build_staticswitcher.sh

# Run the full process (patch, build, install)
./build_staticswitcher.sh

# Or run specific actions:
./build_staticswitcher.sh -a patch    # Only apply patches
./build_staticswitcher.sh -a build    # Only build
./build_staticswitcher.sh -a install  # Only install
```

### Manual Installation

1. Apply the patches to your Compiz source code
2. Build Compiz with the staticswitcher plugin:
   ```bash
   mkdir build && cd build
   cmake .. -DCMAKE_BUILD_TYPE=Release
   make -j$(nproc) staticswitcher
   ```
3. Install the plugin:
   ```bash
   sudo make install
   ```

## Configuration

After installation, configure the new options in CompizConfig Settings Manager under "Static Application Switcher":

- **Preview Size**: Configure preview width, height, and border
- **Close Button**: Enable/disable close buttons and set size
- **Switch Behavior**: Control when switching occurs and highlight-only mode
- **Keyboard shortcuts**: Set up custom key bindings

## Usage

The static switcher works as before with Alt+Tab, but now with enhanced features:
- Window previews are larger and clearer
- Close buttons allow closing windows without selecting them first
- Highlight-only mode lets you preview windows before switching
- Yellow border indicates the currently selected window in highlight-only mode

## Notes

- Backups of original files are created with `.backup` extension
- The highlight-only mode is enabled by default for better user experience
- All new features are configurable through the Compiz settings interface
- The plugin maintains full backward compatibility with existing configurations

## Troubleshooting

If you encounter issues:
1. Check that all prerequisites are installed
2. Verify that you have sufficient permissions for installation
3. Review the build output for specific error messages
4. Restore original files from backup if needed