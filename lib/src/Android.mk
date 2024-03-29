# Modifications to tree-sitter to build on Android.
# Copyright (C) 2023 Free Software Foundation, Inc.

# These modifications are part of GNU Emacs.

# GNU Emacs is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.

# GNU Emacs is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

LOCAL_PATH := $(call my-dir)

libtree_sitter_src := alloc.c get_changed_ranges.c language.c	\
  lexer.c node.c parser.c query.c stack.c subtree.c		\
  tree_cursor.c tree.c
LOCAL_CFLAGS := -O2 -Wimplicit-function-declaration		\
  -Werror=implicit-function-declaration

LOCAL_SRC_FILES := $(libtree_sitter_src)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/../include
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
LOCAL_MODULE := tree-sitter
LOCAL_LDFLAGS := --no-undefined

include $(BUILD_SHARED_LIBRARY)
