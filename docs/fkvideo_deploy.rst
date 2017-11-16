Configure and Start Video Face Detection
============================================

This section will guide you through the :program:`fkvideo_detector` deployment process. Follow the steps below minding the sequence.

.. note::
   The fkvideo_detector component has to be :ref:`installed <fkvideo-install>`.

.. rubric:: In this section:

.. contents::
   :local:


.. _camera-fkvideo:

Specify Video Streams
------------------------

To specify video streams for face detection, do the following:

#. Make a copy of the configuration file ``/etc/fkvideo.ini``. Open the new file for editing.

   .. code::

      sudo cp /etc/fkvideo.ini /etc/fk_local_config.ini
      sudo vi /etc/fk_local_config.ini

#. If you have only one camera, you can add it in the new configuration file.

   .. code::

       [General]
       ; Host settings
       api-host=127.0.0.1
       ; Put your token here
       api-token=RczGgVEMizR1njHHQegNH_g9mwGl6-A1
       api-port=8000

       ; Camera params
       ; If params doesn't set detector ask cameras list from server by key
       ; Key for receiving cameras list
       ;detector-name=detec1
       ; Camera ID
       camid=local
       ; Stream path
       ; Example: rtsp:// - network stream; /dev/video0 - webcam; file@FPS:PATH - file with configurable FPS
       source=rtsp://admin:qwert1234@192.168.104.199:554/Streaming/Channels/1
       ; Maximum cameras
       detectors-max=20

       ; Motion detector scale coefficient for best performance
       scale=0.3

       ; In realtime mode detector posts many frames wih increasing quality
       ; Else it sends only best frame
       realtime=1

       ; URL that will receive frames
       request-url=/v1/face/
       ; You can add custom head and body params to HTML POST request
       head=
       body=mf_selector=all,meta=User Meta
       ;

       ; Address of ntls server
       license-ntls-server=127.0.0.1:3133

   .. tip::
       You can find an example of the configuration file `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_local_config.ini>`__.

#. If you have more than one camera, use the Server to store all your cameras. Add your camera to server by POST request v1/camera. For    example, add camera to detector=detec1:

   .. rubric:: Request

   .. code::

       curl -H 'Authorization: Token 1234567890qwertyuiop' -F "detector=detec1" -F "url=rtsp://user:pass@192.168.1.1:554/Streaming/Channels/1" -F "meta=test" http://localhost:8000/v1/camera


   .. rubric:: Response

   .. code::

       {"detector": "detec1", "id": "0e663c00-b945-4676-bb0e-032c1dcf353a", "meta": "test", "url": "rtsp:// user:pass@192.168.1.1:554/Streaming/Channels/1"}


   Now edit your configuration file. For example, detector will connect to server, and get all cameras with detector=detec1

   .. code::

       [General]
       ; Host settings
       api-host=127.0.0.1
       ; Put your token here
       api-token=RczGgVEMizR1njHHQegNH_g9mwGl6-A1
       api-port=8000

       ; Camera params
       ; If params doesn't set detector ask cameras list from server by key
       ; Key for receiving cameras list
       detector-name=detec1
       ; Camera ID
       ;camid=
       ; Stream path
       ; Example: rtsp:// - network stream; /dev/video0 - webcam; file@FPS:PATH - file with configurable FPS
       ;source=
       ; Maximum cameras
       detectors-max=20

       ; Motion detector scale coefficient for best performance
       scale=0.3

       ; In realtime mode detector posts many frames wih increasing quality
       ; Else it sends only best frame
       realtime=1

       ; URL that will receive frames
       request-url=/v1/face/
       ; You can add custom head and body params to HTML POST request
       head=
       body=mf_selector=all,,meta=UserMeta
       ;

       ; Address of ntls server
       license-ntls-server=127.0.0.1:3133

   .. tip::
       You can find an example of the configuration file `here <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/fk_server_config.ini>`__.


Start Component as Application
------------------------------------------ 

To start fkvideo_detector as an application, execute:

.. code::

    fkvideo_detector -c /etc/fk_local_config.ini

Use this method for testing purposes.


Start Component as Service
--------------------------------

To run the face detection component as a service, do the following:

#. Execute the following command:

   .. code::

       sudo service fkvideo_detector@fk_local_config start

#. Check service status. The command will return a service description, a status should be active (running).

   .. code::

       sudo service fkvideo_detector@fk_local_config status

   .. note::
       You can get the list of your cameras by the following request:

       .. code::

          curl -H 'Authorization: Token 1234567890qwertyuiop' http://localhost:8000/v1/camera | jq

