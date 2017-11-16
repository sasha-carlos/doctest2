��    G      T              �     �  	   �     �     �     �     �  H  �  �   !     �  �   �     ]  ,   i  D   �     �     �       �        �     �     �  1   �     �  v   f	     �	     �	     �	     
  t   
     �
  !   �
  �  �
     h  �   t     ]  '   n     �  	   �  �   �  N   v  #   �  �   �     �  6   �     �          0     I     a  �   g  �   A     �     �       �        �     �     �     �     �     �     �  4   �     �     �     �                      E     �  [     M  	   [     e     m     �     �  H  �  �   �     �  �   �       ,   )  D   V     �     �     �  �   �     W     ]     n  1   t     �  v   &     �     �     �     �  t   �     @  !   D  �  f     (  �   4       '   .  '   V  	   ~  �   �  N   J  #   �  �   �     }   6   �      �      �      !     !     5!  �   ;!  �   "     �"     �"     �"  �   �"     j#     p#     v#     |#     �#     �#     �#  4   �#     �#     �#     �#     �#     �#     �#     �#  E   �#   0 (own needs) 1,000,000 100,000 4 GB in the real-time mode. 50,000 500,000 :ref:`Standalone installation <standalone>` of FindFace Enterprise Server SDK is recommended when the number of faces in the database **does not** exceed some ``1,000,000``. Otherwise you should install Findface Enterprise Server SDK in a :ref:`cluster environment <cluster>` and configure :ref:`fast index <fast-index>` search. A host for the :ref:`video face detection <video>` component must meet the following requirements (given that a video stream is 1 x 720p (1280×720) at 25FPS playback speed): CPU Depending on your needs, :ref:`adjust <tntapi>` the Tarantool maximum memory usage at ``/etc/tarantool/instances.enabled/FindFace.lua``. Description Facen :ref:`model <models>`: ``apricot_320`` FindFace Enterprise Server SDK supports the following image formats: FindFace Web User Interface General Requirements HDD Here you can see the FindFace Enterprise Server SDK memory usage benchmark results. Use these data to calculate the RAM size you need. Hosts In this chapter: JPEG, Memory usage may slightly vary from test to test. Models for :ref:`gender, age and emotions recognition <gae>` (GAE in the table): ``fr_1_gender0``, ``fr_1_age0``, ``emotion_1`` Models used in :ref:`extraction-api <extraction-api>`: ``apricot_320``, ``fr_1_gender0``, ``fr_1_age0``, ``emotion_1`` MongoDB Number of faces Operating system PNG, Prior to installing FindFace Enterprise Server SDK, ensure that the host(s) meet the following minimum requirements: RAM RAM consumption by components, MB RAM consumption depends on the number of faces in your dataset. Use the benchmark results :ref:`below <RAM-benchmark>` to calculate the memory size you need. Note that if there are 2 or more galleries with facens, you have to multiply the given MongoDB and Tarantool RAM consumption by the relevant number of galleries. As a rule, ``10,000,000`` faces require 20Gb RAM for Tarantool. MongoDB does not need much RAM as it uses HDD as RAM when needed. Requirement Requirements depend on motion activity and the number of faces in video, the video face detector settings and FindFace Enterprise Server SDK overall load. To select an optimal configuration, contact our experts by info@ntechlab.com. Supported Images Supported Video File Formats and Codecs System Requirements Tarantool The fkvideo_detector component supports all video file formats and codecs that can be decoded by `FFmpeg <https://www.ffmpeg.org/general.html#Supported-File-Formats_002c-Codecs-or-Features>`__. The maximum image size is 10 MB. The minimum distance between pupils is 40 px. The testing setup is the following: To process video in the FindFace Enterprise Server SDK :ref:`web user interface <ffui>`, its host should meet the same requirements as for the :ref:`video face detector <video-requirements>`. Ubuntu 16.04 LTS (only x64). Ubuntu 16.04 LTS. The 32-bit version is not supported. VMware: vSphere 5.0 or later. Video Face Detection Video Face Detector Host Virtual machine support WebP. ``10,000,000`` faces require ~20x[number of snapshots for each shard] GB for Tarantool (by default 20x3=60 GB) and 24 GB for MongoDB. To store all uploaded images via findface-upload: size of all uploaded images + 10% ``MongoDB``, ``Tarantool``: facens are stored in one gallery. If there are 2 or more galleries with facens, multiply the given RAM amount by the relevant number of galleries. extraction-api nnapi nnapi + GAE x86-64 CPU (Intel), >2.0 Ghz, >2 cores. The CPU AVX support is required for operation of all the components, except findface-upload. ~1000 ~1013 ~1190 ~1400 ~181 ~189 ~1943 ~1GB (1 Core)/~7GB (8 Cores) (up to 10,5 under load) ~2310 ~263 ~265 ~294 ~400 ~70 ~77 ≥ INTEL Core i5 6400 (2 physical core CPU). AVX support required. Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-08 16:27+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 0 (own needs) 1,000,000 100,000 4 GB in the real-time mode. 50,000 500,000 :ref:`Standalone installation <standalone>` of FindFace Enterprise Server SDK is recommended when the number of faces in the database **does not** exceed some ``1,000,000``. Otherwise you should install Findface Enterprise Server SDK in a :ref:`cluster environment <cluster>` and configure :ref:`fast index <fast-index>` search. A host for the :ref:`video face detection <video>` component must meet the following requirements (given that a video stream is 1 x 720p (1280×720) at 25FPS playback speed): CPU Depending on your needs, :ref:`adjust <tntapi>` the Tarantool maximum memory usage at ``/etc/tarantool/instances.enabled/FindFace.lua``. Description Facen :ref:`model <models>`: ``apricot_320`` FindFace Enterprise Server SDK supports the following image formats: FindFace Web User Interface General Requirements HDD Here you can see the FindFace Enterprise Server SDK memory usage benchmark results. Use these data to calculate the RAM size you need. Hosts In this chapter: JPEG, Memory usage may slightly vary from test to test. Models for :ref:`gender, age and emotions recognition <gae>` (GAE in the table): ``fr_1_gender0``, ``fr_1_age0``, ``emotion_1`` Models used in :ref:`extraction-api <extraction-api>`: ``apricot_320``, ``fr_1_gender0``, ``fr_1_age0``, ``emotion_1`` MongoDB Number of faces Operating system PNG, Prior to installing FindFace Enterprise Server SDK, ensure that the host(s) meet the following minimum requirements: RAM RAM consumption by components, MB RAM consumption depends on the number of faces in your dataset. Use the benchmark results :ref:`below <RAM-benchmark>` to calculate the memory size you need. Note that if there are 2 or more galleries with facens, you have to multiply the given MongoDB and Tarantool RAM consumption by the relevant number of galleries. As a rule, ``10,000,000`` faces require 20Gb RAM for Tarantool. MongoDB does not need much RAM as it uses HDD as RAM when needed. Requirement Requirements depend on motion activity and the number of faces in video, the video face detector settings and FindFace Enterprise Server SDK overall load. To select an optimal configuration, contact our experts by info@ntechlab.com. Supported Images Supported Video File Formats and Codecs Системные требования Tarantool The fkvideo_detector component supports all video file formats and codecs that can be decoded by `FFmpeg <https://www.ffmpeg.org/general.html#Supported-File-Formats_002c-Codecs-or-Features>`__. The maximum image size is 10 MB. The minimum distance between pupils is 40 px. The testing setup is the following: To process video in the FindFace Enterprise Server SDK :ref:`web user interface <ffui>`, its host should meet the same requirements as for the :ref:`video face detector <video-requirements>`. Ubuntu 16.04 LTS (only x64). Ubuntu 16.04 LTS. The 32-bit version is not supported. VMware: vSphere 5.0 or later. Video Face Detection Video Face Detector Host Virtual machine support WebP. ``10,000,000`` faces require ~20x[number of snapshots for each shard] GB for Tarantool (by default 20x3=60 GB) and 24 GB for MongoDB. To store all uploaded images via findface-upload: size of all uploaded images + 10% ``MongoDB``, ``Tarantool``: facens are stored in one gallery. If there are 2 or more galleries with facens, multiply the given RAM amount by the relevant number of galleries. extraction-api nnapi nnapi + GAE x86-64 CPU (Intel), >2.0 Ghz, >2 cores. The CPU AVX support is required for operation of all the components, except findface-upload. ~1000 ~1013 ~1190 ~1400 ~181 ~189 ~1943 ~1GB (1 Core)/~7GB (8 Cores) (up to 10,5 under load) ~2310 ~263 ~265 ~294 ~400 ~70 ~77 ≥ INTEL Core i5 6400 (2 physical core CPU). AVX support required. 