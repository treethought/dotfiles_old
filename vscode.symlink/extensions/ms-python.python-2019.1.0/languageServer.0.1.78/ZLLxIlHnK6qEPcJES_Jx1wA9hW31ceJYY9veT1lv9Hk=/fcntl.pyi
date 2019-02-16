FASYNC = 64
FD_CLOEXEC = 1
F_DUPFD = 0
F_FULLFSYNC = 51
F_GETFD = 1
F_GETFL = 3
F_GETLK = 7
F_GETOWN = 5
F_RDLCK = 1
F_SETFD = 2
F_SETFL = 4
F_SETLK = 8
F_SETLKW = 9
F_SETOWN = 6
F_UNLCK = 2
F_WRLCK = 3
LOCK_EX = 2
LOCK_NB = 4
LOCK_SH = 1
LOCK_UN = 8
__doc__ = 'This module performs file control and I/O control on file \ndescriptors.  It is an interface to the fcntl() and ioctl() Unix\nroutines.  File descriptors can be obtained with the fileno() method of\na file or socket object.'
__file__ = '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/lib-dynload/fcntl.so'
__name__ = 'fcntl'
__package__ = None
def fcntl(fd, op, arg=None):
    'fcntl(fd, op, [arg])\n\nPerform the operation op on file descriptor fd.  The values used\nfor op are operating system dependent, and are available\nas constants in the fcntl module, using the same names as used in\nthe relevant C header files.  The argument arg is optional, and\ndefaults to 0; it may be an int or a string.  If arg is given as a string,\nthe return value of fcntl is a string of that length, containing the\nresulting value put in the arg buffer by the operating system.  The length\nof the arg string is not allowed to exceed 1024 bytes.  If the arg given\nis an integer or if none is specified, the result value is an integer\ncorresponding to the return value of the fcntl call in the C code.'
    pass

def flock(fd, operation):
    'flock(fd, operation)\n\nPerform the lock operation op on file descriptor fd.  See the Unix \nmanual page for flock(2) for details.  (On some systems, this function is\nemulated using fcntl().)'
    pass

def ioctl(fd, op, arg=None, mutate_flag=None):
    'ioctl(fd, op[, arg[, mutate_flag]])\n\nPerform the operation op on file descriptor fd.  The values used for op\nare operating system dependent, and are available as constants in the\nfcntl or termios library modules, using the same names as used in the\nrelevant C header files.\n\nThe argument arg is optional, and defaults to 0; it may be an int or a\nbuffer containing character data (most likely a string or an array). \n\nIf the argument is a mutable buffer (such as an array) and if the\nmutate_flag argument (which is only allowed in this case) is true then the\nbuffer is (in effect) passed to the operating system and changes made by\nthe OS will be reflected in the contents of the buffer after the call has\nreturned.  The return value is the integer returned by the ioctl system\ncall.\n\nIf the argument is a mutable buffer and the mutable_flag argument is not\npassed or is false, the behavior is as if a string had been passed.  This\nbehavior will change in future releases of Python.\n\nIf the argument is an immutable buffer (most likely a string) then a copy\nof the buffer is passed to the operating system and the return value is a\nstring of the same length containing whatever the operating system put in\nthe buffer.  The length of the arg buffer in this case is not allowed to\nexceed 1024 bytes.\n\nIf the arg given is an integer or if none is specified, the result value is\nan integer corresponding to the return value of the ioctl call in the C\ncode.'
    pass

def lockf(fd, operation, length=0, start=0, whence=0):
    'lockf (fd, operation, length=0, start=0, whence=0)\n\nThis is essentially a wrapper around the fcntl() locking calls.  fd is the\nfile descriptor of the file to lock or unlock, and operation is one of the\nfollowing values:\n\n    LOCK_UN - unlock\n    LOCK_SH - acquire a shared lock\n    LOCK_EX - acquire an exclusive lock\n\nWhen operation is LOCK_SH or LOCK_EX, it can also be bitwise ORed with\nLOCK_NB to avoid blocking on lock acquisition.  If LOCK_NB is used and the\nlock cannot be acquired, an IOError will be raised and the exception will\nhave an errno attribute set to EACCES or EAGAIN (depending on the operating\nsystem -- for portability, check for either value).\n\nlength is the number of bytes to lock, with the default meaning to lock to\nEOF.  start is the byte offset, relative to whence, to that the lock\nstarts.  whence is as with fileobj.seek(), specifically:\n\n    0 - relative to the start of the file (SEEK_SET)\n    1 - relative to the current buffer position (SEEK_CUR)\n    2 - relative to the end of the file (SEEK_END)'
    pass

