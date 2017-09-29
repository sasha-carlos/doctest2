Get Started
======================

A typical FindFace Enterprise Server SDK-based biometric system is shown
on the diagram below:

FindFace Enterprise Server SDK consists of the Biometric Data Analysis and Recognition Server (hereinafter referred to as FindFace Server or
Server) and, optionally, the video face detector. Besides the latter, you can also install the other additional components. The FindFace Server
functioning is provided by interaction of the following components: 

+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Service                                  | Description                                                                                                                                                                                               |
+==========================================+===========================================================================================================================================================================================================+
| findface-facenapi                        | Python daemon which runs HTTP API. This daemon executes face detection functions, interfaces with MongoDB and findface-nnapi and tarantool@FindFace daemons.                                              |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tntapi (tarantool@FindFace as a shard)   | Daemon which enables interaction with the face descriptors index.                                                                                                                                         |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| findface-nnapi                           | Daemon extracts a feature vector (based on neural network). Requires the package with models <findface-data>.deb.                                                                                         |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| MongoDB                                  | Database which stores faces metadata, galleries details, settings, etc.                                                                                                                                   |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| findface-upload                          | Nginx web server used to receive images using WebDAV.                                                                                                                                                     |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| NTLS                                     | Local license server which interfaces with the Global NTechLab License Server (for the network licensing) or a USB dongle (for the on-premise licensing) and passes a license to licensable components.   |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Follow the diagram below to deploy FindFace Enterprise Service SDK and
get ready for delivering face recognition services to your customers.


**The 9 steps to face recognition:**

#. Choose deployment architecture
#. Prepare hardware
#. Install prerequisites
#. Install FindFace Enterprise Server SDK
#. Create a token and test the system work
#. Configure video face detection
#. Increase performance by setting up `nginx load
   balancing and fast index
#. Add advanced features
#. Finalize the system with coding
