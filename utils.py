import os

def __env(varname, default=None, etype=str):
    value = os.getenv(varname)

    if value is None:
        return default

    return etype(value)