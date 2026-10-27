# Built by AB with Claude.ai on Oct 27, 2026

import base64
_d = 'EGki7D*zi68bK)x5fuXg0vJj~lm6xBLm~qJ018VG4FwJtLl^`Q5kU_C5DG;'
_k = input("Password: ")
try:
    _m = bytes(b ^ _k.encode()[i % len(_k)] for i, b in enumerate(base64.b85decode(_d))).decode()
except (UnicodeDecodeError, ZeroDivisionError):
    _m = ""
print(_m[4:] if _m.startswith("OK::") else "Nope, wrong password.")
