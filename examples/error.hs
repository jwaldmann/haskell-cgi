import Network.NewCGI

cgiMain :: CGI CGIResult
cgiMain = do liftIO $ readFile "foo"
             output "bar"

main :: IO ()
main = runCGI (handleErrors cgiMain)