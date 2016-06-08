module Paths_haskelldemo (
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

bindir     = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/haskelldemo/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/bin"
libdir     = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/haskelldemo/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/lib/x86_64-osx-ghc-7.10.3/haskelldemo-0.1.0.0-I4AqkMQem0u5lns4eqWxql"
datadir    = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/haskelldemo/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/share/x86_64-osx-ghc-7.10.3/haskelldemo-0.1.0.0"
libexecdir = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/haskelldemo/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/libexec"
sysconfdir = "/Users/a13705/Documents/mylibs/JenkinsMultibranchPipeline/haskelldemo/.stack-work/install/x86_64-osx/lts-6.2/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskelldemo_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskelldemo_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskelldemo_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskelldemo_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskelldemo_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
