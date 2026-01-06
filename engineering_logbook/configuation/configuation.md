# Configuration
## Purpose
This section documents how the project is configured at a package and workspace level. It explains which configuration files are  used, where they are located, and how they control build, dependency, and runtime behaviour 

## Workspace Structure
**Workspace Root:**  
`<workspace_name>/`

<workspace_name>/
├── src/
│   └── <package_name>/
│       ├── CMakeLists.txt
│       ├── package.xml
│       ├── include/              # (C++ only)
│       ├── src/                  # Source files
│       ├── launch/               # Launch files
│       ├── config/               # Runtime configuration files (YAML, params)
│       └── resource/             # Package resource files
```

## Package Configuration (`package.xml`)
**File Location:**  
`src/<package_name>/package.xml`

**Key Elements:**
- Package name and version  
- Maintainer and license information  
- Build dependencies  
- Execution (runtime) dependencies  
- Exported build type (`ament_cmake`, `ament_python`)


## Build Configuration (`CMakeLists.txt`) *(C++ packages only)*
**File Location:**  
`src/<package_name>/CMakeLists.txt`

**Key Elements:**
- Dependencies
- Executable(s)
- Source and header files
- Build and install rules

## Python Package Configuration *(Python packages only)*
**Files:**
- `setup.py`  
- `setup.cfg`  
- `resource/<package_name>`\

**Key Elements:**
- Python version
- Package metadata
- Package structure for __init.py__
- Entry points (executable nodes)
- Dependencies


Runtime configuration support
## Launch Configuration
**Location:**  
`src/<package_name>/launch/`


---
# Entry Added on 2026-01-07 10:17:52
## Update of ROS2 Python Package Configuration
### TODAY'S DATE: 2026-01-07

## Purpose
This section documents how the project is configured at a package and workspace level. It explains which configuration files are used, where they are located, and how they control build, dependency, and runtime behavior.

## Workspace Structure
**Workspace Root:**  
`<Ros2_ws_Python>/`

```
<Ros2_ws_Python>/
├── src/
│   └── python_pub_sub/
│       ├── package.xml
│       ├── setup.py
│       ├── python_pub_sub/
│       │   ├── __init__.py
│       │   ├── publisher.py
│       │   └── subscriber.py
│       ├── launcher/
│       │   └── pub.sh
│       ├── test/
│       │   ├── pytest_pub.py
│       │   └── pytest_sub.py
│       └── .pytest_cache/
```

## Python Package Configuration *(Python packages only)*
**Files:**
- `setup.py`  
- `resource/python_pub_sub`

**Key Elements:**
- **Package metadata:** Name `python_pub_sub`, version `0.0.0`, maintained by Noah Garsia
- **Entry points (executable nodes):** 
  - `project_1_publisher = python_pub_sub.publisher:main`
  - `project_1_subscriber = python_pub_sub.subscriber:main`
- **Dependencies:** `setuptools`
- **Extras for testing:** `pytest`
- **Package structure:** Includes `__init__.py` for package initialization

## Launch Configuration
**Location:**  
`src/python_pub_sub/launcher/pub.sh`

