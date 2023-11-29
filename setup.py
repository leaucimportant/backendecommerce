# -*- coding utf-8 -*-

from setuptools import setup, find_packages

setup(
    name="Breizhsport e-commerce API",
    version="1.0.0",
    description="Ce programme gère l'API et les interactions avec la base de donnée du site e-commerce de Breizhsport",
    url="https://gitlab.com/cesi8961941/cubes-3/backend-ecommerce",
    author="Thomas NOEL-LARDIN",
    platforms=list('Linux', ),
    include_package_data=True,
    packages=find_packages(exclude=('tests*',)),
    entry_points={
        'console_scripts': [
            'breizhsportapi = application.__main__:main'
        ]
    }

)
