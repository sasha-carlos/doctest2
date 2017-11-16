��                        �     �      $   ,     Q     c     v  O   �     �     �     
     $  "   3     V  
   ^  
   i     t     }    �  �   �  �   6  �   �  �   �  t   &  �   �    k	  �   n
  �   I  �   �  X   �  �  �  /   �  V    %   b  "   �     �  9   �  O     C   U     �  :   �  .   �  E        Z     g     y  
   �     �    �  �   �  �   a  �     �     �   �  Y  5    �  �   �    m  �   o  X      Add Face to Gallery Before you can proceed with development and deliver face recognition services to your customers, make sure that the FindFace Server components are working. To do so, run the test requests below, minding the sequence. To pretty-print responses, we recommend you to use :program:`jq`. Compare Face with Those from Gallery Compare Two Faces Create New Gallery Detect Face in Image First, you need to :ref:`configure <gae>` gender, age and emotions recognition. How to Pretty-Print Responses In this section: List Faces from Galleries List Galleries Recognize Gender, Age and Emotions Request Request #1 Request #2 Response Test Requests The following 2 requests process an image on the Internet (#1) and a local image (#2), detect a face and compare it with those from the default gallery. Return data of most similar faces and their similarity index. Relevant REST API method: :ref:`/identify POST <identify-post>`. The following request also adds a face to a gallery but this time the face is extracted from a local image, and the gallery is custom ('testgal'). The following requests return the list of all faces stored in galleries, both default and custom (#1), and only custom (#2). Relevant REST API method: :ref:`/faces GET <faces-get>`. The request messages here are provided only for reference. To create valid requests out of the examples below, replace the token in the messages with the :ref:`actual <token>` one. This request compares a face in a local image and that on the Internet. Relevant REST API method: :ref:`/verify POST <verify-post>`. This request creates a new gallery ``testgal``. Relevant REST API method: :ref:`/galleries/new POST <gallery-post>`. This request detects faces in a sample image on the Internet and returns coordinates of the rectangle around a detected face (:ref:`bbox <bbox>`). Relevant REST API method: :ref:`/detect POST <detect-post>`. This request detects faces in a sample image on the internet and returns coordinates of the rectangle around a detected face (bbox) along with gender, age and emotions information. Relevant REST API method: :ref:`/detect POST <detect-post>`. API version: v1. This request processes the same sample image as in the previous request, detects a face and adds the detected face to the default gallery with a unique meta tag. Relevant REST API method: :ref:`/face POST <face-post>`. This request returns the name of the only gallery existing at the present moment. It is the ``default`` gallery. Relevant REST API method: :ref:`/galleries GET <galleries-get>`. To proceed with development, find more code samples (in C#, PHP, Java and Python) on our `GitHub <https://github.com/NTech-Lab/ffserver-examples>`_. Use :program:`jq` to parse JSON data in responses. To install :program:`jq`, execute: :: Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-13 17:41+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Добавление лица в галерею Перед тем как приступить к программированию и использованию распознавания лиц в своем приложении, убедитесь, что компоненты Сервера FindFace работают надлежащим образом. Для этого выполните по порядку приведенные ниже тестовые запросы. Для того чтобы структурировать текст ответов на запросы, используйте обработчик JSON :program:`jq`. Поиск лица в галерее Сравнение двух лиц Создание галереи Обнаружение лица на фотографии First, you need to :ref:`configure <gae>` gender, age and emotions recognition. Структурирование ответов на запросы In this section: Получение списка лиц в галереях Получение списка галерей Распознавание пола, возраста и эмоций Запрос Запрос №1 Запрос №2 Ответ Тестовые запросы The following 2 requests process an image on the Internet (#1) and a local image (#2), detect a face and compare it with those from the default gallery. Return data of most similar faces and their similarity index. Relevant REST API method: :ref:`/identify POST <identify-post>`. The following request also adds a face to a gallery but this time the face is extracted from a local image, and the gallery is custom ('testgal'). The following requests return the list of all faces stored in galleries, both default and custom (#1), and only custom (#2). Relevant REST API method: :ref:`/faces GET <faces-get>`. Сообщения запросов приведены в качестве примера. Вам потребуется заменить токен авторизации в запросах на :ref:`актуальный <token>`. This request compares a face in a local image and that on the Internet. Relevant REST API method: :ref:`/verify POST <verify-post>`. Данный запрос создает новую галерею ``testgal``. Соответствующий метод REST API: :ref:`/galleries/new POST <gallery-post>`. Данный запрос обнаруживает лицо на тестовом изображении, размещенном в сети Интернет, и возвращает координаты рамки вокруг лица (:ref:`bbox <bbox>`). Соответствующий метод REST API: :ref:`/detect POST <detect-post>`. This request detects faces in a sample image on the internet and returns coordinates of the rectangle around a detected face (bbox) along with gender, age and emotions information. Relevant REST API method: :ref:`/detect POST <detect-post>`. API version: v1. This request processes the same sample image as in the previous request, detects a face and adds the detected face to the default gallery with a unique meta tag. Relevant REST API method: :ref:`/face POST <face-post>`. Данный запрос возвращает имя единственной на данный момент галереи (создана по умолчанию). Соответствующий метод REST API: :ref:`/galleries GET <galleries-get>`. Вы можете найти примеры кода на C#, PHP, Java и Python на нашем ресурсе `GitHub <https://github.com/NTech-Lab/ffserver-examples>`_. Use :program:`jq` to parse JSON data in responses. To install :program:`jq`, execute: :: 