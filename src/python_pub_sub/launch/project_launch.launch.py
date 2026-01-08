import launch
from launch import LaunchDescription
from launch_ros.actions import Node
from launch.actions import TimerAction, ExecuteProcess, RegisterEventHandler, LogInfo
from launch.event_handlers import OnProcessExit

def generate_launch_description():
    
    # 1. Define the Publisher
    pub_node = Node(
        package='python_pub_sub',
        executable='project_1_publisher',
        name='publisher_node',
        remappings=[('project_1_example_topic', 'topic')]
    )

    # 2. Define the Subscriber
    sub_node = Node(
        package='python_pub_sub',
        executable='project_1_subscriber',
        name='subscriber_node',
        remappings=[('project_1_example_topic', 'topic')]
    )

    # 3. Define the Test Commands
    run_tests = ExecuteProcess(
        cmd=['pytest', '-v', 'src/python_pub_sub/test/pytest_pub.py', 'src/python_pub_sub/test/pytest_sub.py'],
        output='screen'
    )

    # 4. THE SEQUENCE LOGIC
    # We want: Timer hits 10s -> Kill Nodes -> Wait 5s -> Run Tests
    
    # This action manually kills the nodes by name using a shell command
    # This is better than 'Shutdown' because it leaves the Launch process alive
    stop_nodes = ExecuteProcess(
        cmd=['pkill', '-f', 'project_1_'],
        output='screen'
    )

    # This starts the chain: 10 seconds in, kill the nodes
    node_timer = TimerAction(
        period=10.0,
        actions=[
            LogInfo(msg="10 seconds up. Killing nodes..."),
            stop_nodes
        ]
    )

    # This waits for the sub_node to actually die, then waits 5s, then runs tests
    test_trigger = RegisterEventHandler(
        OnProcessExit(
            target_action=sub_node,
            on_exit=[
                LogInfo(msg="Nodes stopped. Waiting 5 seconds for cleanup..."),
                TimerAction(
                    period=5.0,
                    actions=[run_tests]
                )
            ]
        )
    )

    return LaunchDescription([
        pub_node,
        sub_node,
        node_timer,
        test_trigger
    ])