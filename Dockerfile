FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]

FROM ros:jazzy

# Install Python build tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
RUN mkdir -p /ros2_ws_python/src
WORKDIR /ros2_ws_python

# Copy your Python ROS2 package into the container
COPY src/ /ros2_ws_python/src/

# Set up rosdep (required even for Python packages)
RUN rosdep init || true
RUN rosdep update

RUN . /opt/ros/jazzy/setup.bash && \
    rosdep install --from-paths src --ignore-src -r -y

# Build your workspace
RUN . /opt/ros/jazzy/setup.bash && \
    colcon build --symlink-install

# Auto-source workspace on startup
CMD ["/bin/bash", "-c", "source /opt/ros/jazzy/setup.bash && source install/setup.bash && exec bash"]
