from setuptools import find_packages, setup

package_name = 'python_pub_sub'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),

        # Correct install location for scripts
        ('lib/' + package_name, ['launcher/pub.sh']),

        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Noah Garsia',
    maintainer_email='noahgarsia@outlook.com',
    description='A minimal ROS2 publisher and subscriber example in Python.',
    license='Apache License 2.0',
    extras_require={
        'test': ['pytest'],
    },
    entry_points={
        'console_scripts': [
            'project_1_publisher = python_pub_sub.publisher:main',
            'project_1_subscriber = python_pub_sub.subscriber:main',
        ],
    },
)
