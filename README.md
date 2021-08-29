# DATA-607

I had major issues with being able to download any csv file - I continued to get the following error in attempting to utilize getURL function within the RCurl package
Error in function (type, msg, asError = TRUE)  : 
  error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version
  
  Steps Taken to Resolve:
  (1) downloaded latest version of GitHub 2.33.0.2
  (2) downloaded latest SSL tar file release at https://www.openssl.org/source/
  (3) re-downloaded latest version of RStudio Desktop 1.4.1717 for Windows 10
