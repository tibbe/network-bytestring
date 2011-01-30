{-# LANGUAGE CPP, ForeignFunctionInterface, PackageImports #-}

-- |
-- Module      : Network.Socket.ByteString
-- Copyright   : (c) Johan Tibell 2007
-- License     : BSD-style
--
-- Maintainer  : johan.tibell@gmail.com
-- Stability   : experimental
-- Portability : portable
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
-- > import Network.Socket.ByteString
--
module Network.Socket.ByteString
  ( -- * Send data to a socket
    send
  , sendAll
  , sendTo
  , sendAllTo

    -- ** Vectored I/O
    -- $vectored
  , sendMany
  , sendManyTo

    -- * Receive data from a socket
  , recv
  , recvFrom

    -- * Example
    -- $example
  ) where

import "network" Network.Socket.ByteString
