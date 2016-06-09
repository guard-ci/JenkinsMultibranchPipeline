module Paths_bar (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/Bar/haskell/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/bin"
libdir     = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/Bar/haskell/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/lib/x86_64-osx-ghc-7.10.3/bar-0.1.0.0-E0ogQFQU8z33akZ2LJUjLI"
datadir    = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/Bar/haskell/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/share/x86_64-osx-ghc-7.10.3/bar-0.1.0.0"
libexecdir = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/Bar/haskell/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/libexec"
sysconfdir = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/Bar/haskell/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "bar_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "bar_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "bar_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "bar_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "bar_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
