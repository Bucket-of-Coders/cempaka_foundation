# backend-yayasan-cempaka

## Requirement:
Python >= 3.7

## How to run:

* Create virtual environment (python -m venv name)
* Activate virtual environment
  - Windows (.\name\Scripts\activate)
  - linux (source name/bin/activate)
* Install all requirements ``pip install -r requirement.txt`` at the project folder
* (in project folder) ``python manage.py runserver`` to run web on local computer

## Rules:

* Variable Name Format = variable_name or variablename 
* Function Name Format = function_name() or functionname()
* Class Name Format = Class_name() or Classname()
* On views.py, please use **function based view**
* When create a new app inside the project, use this format to register the new app ``example_app.apps.ExampleAppConfig`` so we can differentiate which one is an app or package
* 

## Branch:

* branch 'main' for final code
* branch 'review' for code that need to review
