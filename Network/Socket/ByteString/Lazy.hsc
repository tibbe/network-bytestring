{-# LANGUAGE BangPatterns, CPP, ForeignFunctionInterface, PackageImports #-}

-- |
-- Module      : Network.Socket.ByteString.Lazy
-- Copyright   : (c) Bryan O'Sullivan 2009
-- License     : BSD-style
--
-- Maintainer  : bos@serpentine.com
-- Stability   : experimental
-- Portability : POSIX, GHC
--
-- This module provides access to the BSD /socket/ interface.  This
-- module is generally more efficient than the 'String' based network
-- functions in 'Network.Socket'.  For detailed documentation, consult
-- your favorite POSIX socket reference. All functions communicate
-- failures by converting the error number to 'System.IO.IOError'.
--
-- This module is made to be imported with 'Network.Socket' like so:
--
-- > import Network.Socket hiding (send, sendTo, recv, recvFrom)
-- > import Network.Socket.ByteString.Lazy
-- > import Prelude hiding (getContents)
--
module Network.Socket.ByteString.Lazy
  (
#if !defined(mingw32_HOST_OS)
    -- * Send data to a socket
      send,
      sendAll,
#endif

    -- * Receive data from a socket
      getContents,
      recv
  ) where

import "network" Network.Socket.ByteString
