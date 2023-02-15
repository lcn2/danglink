#!/bin/sh -
#
# badlink - find dangling, long or messy symlinks
#
# @(#) $Revision: 1.2 $
# @(#) $Id: badlink.sh,v 1.2 2007/02/13 23:09:32 chongo Exp $
# @(#) $Source: /usr/local/src/bin/danglink/RCS/badlink.sh,v $
#
# Copyright (c) 2007 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# chongo (Landon Curt Noll, http://www.isthe.com/chongo/index.html) /\oo/\
#
# Share and enjoy! :-)

# parse args
#
if [ $# -lt 1 ]; then
    echo "usage: $0 path ..." 1>&2
    exit 1
fi

# seach for dangling symlinks
#
symlinks -r $@ | egrep '^dangling:|^messy:|^lengthy:'
exit 0
