��    j      l              �  *   �  <   �  7   %  4   ]  :   �     �  �   �  3   �  �   �  �   �	  $   >
  (   c
     �
  
   �
  
   �
     �
  M   �
  D        M  L   b  �   �  ^  d  �   �     m     ~  ?   �     �     �     �          )     E     ^     w     �  #   �     �  "   �           $     @     V     g     �  Z   �  
   �     �  q     9  z     �     �  =   �  <     1   @  (   r  $  �     �  �   �  �   _  6   
  4   A  5   v  F  �  �   �  M   �  �     l   �  2   %  2   X  :   �  ?   �  /     H   6  7     E   �  ,   �  @   *  P   k  N   �  �     B   �  N     O   b  S   �  *      /   1     a   8   �!     �!  ^   �!  �   2"  �   �"  I   K#  w   �#  .   $  7   <$  8   t$  P   �$  1   �$     0%  r   1&  U   �&    �&  @   (  B   G(  �  �(  E   |*  �   �*  X   E+  c   �+  P   ,  4   S,  :  �,  X   �-  U  .  D  r/  G   �0  S   �0     S1     `1     r1     �1  �   �1  T   82     �2  �   �2  ]  E3    �4    �6     �7  �   �7  �   A8     �8     9     9     99     O9     o9     �9      �9     �9  '   �9     :  &   ":  $   I:     n:     �:     �:     �:     �:  j   �:     _;     s;  �   �;  7  ^<     �@  
   �@  x   �@  K   'A  �   sA  V   �A  �  KB     �C  �   �C  ]  �D     �E     F      F  Q  8F    �G  �   �I  �  JJ  �   L  {    M  �   |M  y   �M  �   wN  L   &O  c   sO  [   �O  �   3P  �   �P  �   VQ  �   R  g   �R  �  S  t   �T  �   U  �   �U  v   GV  �   �V  �   BW  �  �W  Y   `Y  *   �Y  �   �Y     �Z    �[     �\  P  P]  g   �^  x   	_  x   �_  j   �_  j   f`  �  �`    cb  �   �d  p  He  c   �g  L   h   A JSON dictionary with list of gallery ids A JSON representation of the added faces or a failure reason A JSON representation of the face with ``id = FaceID``. A JSON representation of the person with id = FaceID A JSON representation of the updated face with id = FaceID A list of history events. A list of objects containing meta string, number of faces marked with this meta string, and JSON representation of the first face object marked with this meta string A list of rectangles, containing the detected faces A map where keys are array representations of bounding boxes of faces on provided photo and values are arrays face objects, along with match confidence, measured from 0 (lowest) to 1 (highest) Creates a new gallery under a given name. The gallery name can contain English letters, numbers, underscore and minus sign (``[a-zA-Z0-9_-]+``). It shouldn't be longer than 48 characters. Deletes a face with the id = FaceId. Deletes the gallery and all faces in it. Example Example #1 Example #2 General Methods Get documentation for specified API version. Available without authorization. HTTP 204 No Content in the case of success, or the reason of failure HTTP 204 No content. If no threshold level is specified, it is set to the default value ``0.75``. In the case multiple faces are detected and ``mf_selector`` is set to reject, this method returns ``400 Bad Request`` and a list of bounding box coordinates for each detected face. In the case, when a binary decision is required, the user should pass a value for the ``threshold`` parameter. You can use one of the 3 :ref:`preset values <thresholds>`: ``strict``, ``medium`` and ``low`` with the former aimed at minimizing the false accept rates and the latter being somewhat more permissive. You can also set a user-defined value. In the case, when you need to calculate similarity of different persons or find similar people rather than verify identity, pass ``none`` to the ``threshold`` parameter. In this section: List all your galleries. Lists documented API versions. Available without authorization. Method /detect POST Method /docs GET Method /docs/<version> GET Method /face POST Method /face/id/<id> DELETE Method /face/id/<id> GET Method /face/id/<id> PUT Method /face/meta/<meta> GET Method /faces GET Method /faces/gallery/<gallery> GET Method /galleries GET Method /galleries/<gallery> DELETE Method /galleries/<gallery> POST Method /history/search POST Method /identify POST Method /meta GET Method /person/id/<id> GET Method /verify POST Note that providing ``bbox1`` or ``bbox2`` argument overrides the value of this parameter. Parameters Parameters: Please feel free to contact us if you need to tune the threshold value for your specific use-case and/or dataset. Processes the uploaded image or provided URL, detects faces and adds the detected faces to the searchable database. If there are multiple faces on the photos, only the biggest face is added by default. You can add a custom string meta, such as name or ID, which uniquely identifies a person. Multiple face objects may have the same meta. We recommend that you don't assign the same meta to different persons. Thus when using person's name as a meta, make sure that all names are unique. You can optionally prefix it with a gallery id to upload into non-default gallery. Request Response Returns detailed information about the face with id = FaceID. Returns the list of all faces stored in a specified gallery. Returns the list of all faces stored in database. Returns the list of faces with a <meta>. Returns the list of faces with a given meta string. Note that the method is case-sensitive, so the given meta has to fully match the one from the database. A meta string has to be URL encoded, and according to the standard, spaces should be encoded as **%20** (not +) in this part of the URL. Returns: This method can be used to modify certain fields of the face object with ``id = FaceID``. Currently only changes to the meta attribute are supported. This method detects faces on the provided image. You can either upload the image file as multipart/form-data or provide an URL, which the API will use to fetch the image. This method does not accept any additional parameters. This method doesn't accept any additional parameters This method doesn't accept any additional parameters. This method is used to search through the face database. The method returns at most n faces (one by default), which are the most similar to the specified face, and the similarity is above the specified :ref:`threshold <thresholds>`. You can optionally specify a gallery id to check a photo only against photos in this gallery. This method is used to verify that two faces belong to the same person, or, alternatively, measures the similarity between the two faces. You can choose between these two modes by setting the ``threshold`` parameter. This method retrieves all events from camera history of the given parameters. This method retrieves all the meta string stored in the database along with one of the associated faces. To get more faces call ``GET /v0/face/meta/[Meta]``. ``"all"``: add all faces, found on the image. Please note that the meta will be the same for all faces added ``"all"``: identify all faces, found on the image. ``"all"``: verify all faces, found on both images. ``"biggest"`` [default]: add the biggest face on the image ``"biggest"`` [default]: identify the biggest face on the image ``"cam_ids"`` [optional]: array of camera ids. ``"end"`` [option]: search history interval, end time as ISO8601 string ``"friend"`` [optional]: friend or foe identification ``"limit"`` [optional]: records per page, if 0 (default) - unlimited ``"person_id"`` [optional]: unique person id ``"reject"``: return an error if more than one face was detected ``"reject"``: return an error if more than one face was detected on any of image ``"start"`` [optional]: search history interval, start time as ISO8601 string ``False`` [default]: use available tntapi shards to obtain face identification results, indicating the number of available servers vs the total number of servers in the ``X-Live-Servers`` header. ``True``: return an error if some tntapi shards are out of service ``bbox1`` [optional]: array of bounding boxes for the faces on the first photo ``bbox2`` [optional]: array of bounding boxes for the faces on the second photo ``bbox`` [optional]: array of bounding boxes specifying face locations on the image ``cam_id`` [optional]: UUID of the camera ``galleries`` [optional]: list of gallery names ``galleries``: JSON dictionary with one key and one value. Either \ ``{"add":["list","of","galleries"]}``, \ ``{"del":["list","of","galleries"]}``, \ ``{"set":["list","of","galleries"]}``. Allows you to add face to galleries, remove from galleries or replace gallery list completely. ``meta`` [optional]: some user-defined string identifier ``meta``: new meta string ``mf_selector`` [optional]: specifies behavior in a case of multiple faces on a photo; one of: ``mf_selector`` [optional]: specifies behavior in case if multiple faces are detected on the photo or inside the provided bounding box: ``mf_selector`` [optional]: specifies behavior in case if there are multiple faces found on the image or inside the specified rectangle; one of: ``n`` [optional]: maximum number of closest faces to return, 1 by default ``next_page``: URL to the next page (path and query portion only). If no such field in response - no more pages exist. ``person_id``: unique identifier of the person ``photo1``: the first uploaded image or an external URL ``photo2``: the second uploaded image or an external URL ``photo``: an uploaded image, or a publicly accessible URL, containing the image ``photo``: the uploaded image, or an external URL ``strict`` [optional]: specifies behavior in case if one or several tntapi shards are out of service. This parameter takes priority over the ``tntapi_ignore_search_errors`` parameter from the findface-facenapi :ref:`configuration file <configure-network>`. ``threshold`` [optional]: one of "strict", "medium", "low" or "none", or a value between 0 and 1. Default is 0.75. ``x1, y1, x2, y2`` [optional]: coordinates of a bounding box of the face on the photo binary verification result, only returned if threshold was not set to none. Each pair of faces is given it's own result. The given pair of photos is also provided with the verification result. It will be true if each face on the first photo has a match on the second. the algorithm's confidence in the decision, measured from 0 to 1 the coordinates of the bounding boxes with the faces on the images Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-15 14:42+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Словарь JSON со списком имен (id) галерей. Представление данных добавленного лица в JSON или ошибку при добавлении. Представление данных лица с определенным id в JSON. Представление данных человека с заданным ``person_id`` в JSON. Представление обновленных данных лица в JSON. Список всех событий истории. Список объектов, содержащих уникальные строки с метаданными, количество лиц, связанных с той или иной строкой, JSON-представление данных первого лица, связанного со строкой. Список координат рамок вокруг обнаруженных лиц. Координаты рамок с лицами, найденными на фотографии. Для каждого набора координат возвращается массив схожих лиц из базы биометрических данных вместе с вероятностью совпадения от 0 до 1. Данный метод создает новую галерею с заданным именем. Имя галереи может содержать латинские буквы, числа, знак подчеркивания и минус ([a-zA-Z0-9_-]+) и не может быть длиннее 48 символов. Данный метод удаляет лицо с заданным id. Данный метод удаляет галерею и все лица в ней. Пример Пример №1 Пример №2 Общие методы Данный метод возвращает документацию к заданной версии API. Доступен без авторизации. HTTP 204 No Content в случае успеха или причину ошибки. HTTP 204 No content. Если параметр ``threshold`` не передан, его значение по умолчанию устанавливается равным ``0.75``. В случае если на изображении было обнаружено несколько лиц и значение ``mf_selector="reject"``, метод возвращает код ошибки ``400`` (``Bad Request``), а также список координат рамок для каждого обнаруженного лица. В случае если требуется однозначное решение о совпадении лиц, на Сервер необходимо передать ненулевое значение параметра ``threshold``. Вы можете использовать одно из 3-х :ref:`предустановленных значений <thresholds>`: ``strict``, ``medium`` или ``low``. Вы также можете задать собственное пороговое значение. В случае если нужно просто вычислить степень схожести 2-х лиц, а не верифицировать идентичность, передайте параметр ``threshold`` со значением ``none``. In this section: Данный метод возвращает список всех существующих галерей в базе данных. Данный метод возвращает список всех задокументированных версий API. Доступен без авторизации. Метод /detect POST Метод /docs GET Метод /docs/<version> GET Метод /face POST Метод /face/id/<id> DELETE Метод /face/id/<id> GET Метод /face/id/<id> PUT Метод /face/meta/<meta> GET Метод /faces GET Метод /faces/gallery/<gallery> GET Метод /galleries GET Метод /galleries/<gallery> DELETE Метод /galleries/<gallery> POST Метод /history/search POST Метод /identify POST Метод /meta GET Метод /person/id/<id> GET Метод /verify POST Параметры ``bbox1`` и ``bbox2`` отменяют значение этого параметра. Параметры: Параметры: При необходимости свяжитесь с нашими специалистами для подбора оптимального порогового значения для вашей системы. Данный метод обрабатывает загруженное изображение или изображение в сети Интернет, обнаруживает на нем лица и добавляет их вместе с векторами признаков в базу биометрических данных. Если на изображении несколько лиц, то по умолчанию в базу данных добавляется только самое крупное. Вместе с лицом вы также можете добавить метаданные, которые являются уникальными для его обладателя, например, идентификатор или имя. Не рекомендуется назначать одинаковые метаданные разным людям. При необходимости вы можете указать имя галереи, в которую нужно добавить лицо помимо галереи по умолчанию. Запрос Ответ Данный метод возвращает подробную информацию о лице с заданным id. Возвращает список всех лиц в базе данных. Данный метод возвращает список всех лиц в базе биометрических данных. Возвращает список лиц с заданными метаданными. Возвращает список лиц с заданными метаданными. Имейте в виду, что данный метод чувствителен к регистру. Строка с метаданными должна быть в кодировке URL. Пробелы между словами в метаданных должны быть закодированы как ``%20``. Возвращает: Данный метод используется для изменения значений полей объекта ``лицо`` с заданным id. Данный метод служит для обнаружения лица на изображении. Вы можете задать изображение в виде файла с составным содержимым (multipart/form-data) или предоставить ссылку на изображение в сети Интернет. Отсутствуют. Отсутствуют. Отсутствуют. Данный метод используется для поиска лица в базе биометрических данных и возвращает выборку лиц, если степень их схожести с искомым выше определенного :ref:`порогового значения <thresholds>`. Данный метод сравнивает две фотографии, проверяя, принадлежит ли изображенное на них лицо одному и тому же человеку, и возвращает степень схожести двух лиц. Дополнительно степень схожести может сравниваться с заданным пороговым значением для принятия однозначного решения о совпадении лиц. Данный метод возвращает все события по видеокамере(ам), удовлетворяющие заданным условиям. Данный метод возвращает все уникальные строки с метаданными, хранящимися в базе данных. Для каждой строки возвращается одно из связанных с ней лиц.  Для того чтобы получить все лица, связанные с той или иной строкой, используйте метод ``GET /v0/face/meta/<meta>``. ``"all"``: добавляет все лица, обнаруженные на фотографии. Имейте в виду, что в этом случае метаданные будут одинаковыми для всех лиц. ``"all"``: поиск по базе данных выполняется по всем лицам на фотографии. ``"all"``: проверяет схожесть всех лиц, обнаруженных на обеих фотографиях. ``"biggest"`` [по умолчанию]: проверяет самое большое лицо на фотографии. ``"biggest"`` [по умолчанию]: поиск по базе данных выполняется для самого крупного лица на фотографии. ``"cam_id"`` [опционально]: массив id видеокамер. ``"end"`` [опционально]: время конца событий в формате ISO8601. ``"friend"`` [опционально]: является ли человек «своим». ``"limit"`` [опционально]: количество записей на странице, по умолчанию 0 — не ограничено. ``"person_id"`` [опционально]: значение параметра ``person_id`` интересующего человека. ``"reject"``: возвращает ошибку, если хотя бы на одной из фотографий присутствует более одного лица. ``"reject"``: возвращает ошибку, если хотя бы на одной из фотографий присутствует более одного лица. ``"start"`` [опционально]: время начала событий в формате ISO8601. ``False`` [по умолчанию]: Сервер использует доступные шарды ``tntapi`` для получения результатов идентификации лица и указывает в ответе отношение количества доступных шардов ``tntapi`` к их общему количеству в заголовке ``X-Live-Servers``. ``True``: возвращает ошибку, если некоторые шарды ``tntapi`` недоступны. ``bbox1`` [опционально]: массив рамок с лицами на первом фото, которые нужно сравнить. ``bbox2`` [опционально]: массив рамок с лицами на втором фото, которые нужно сравнить. ``bbox`` [опционально]: массив рамок, содержащих лица на изображении. ``cam_id`` [опционально]: UUID видеокамеры, от которой пришло изображение лица. ``galleries`` [опционально]: список имен галерей, в которые необходимо добавить лицо. ``galleries``: словарь JSON с одной парой ключ-значение. Вы можете добавить, удалить или полностью изменить список пользовательских галерей, в которых хранится лицо: ``{"add":["list","of","galleries"]}, {"del":["list","of","galleries"]}, {"set":["list","of","galleries"]}``.  ``meta`` [опционально]: пользовательские метаданные. ``meta``: новые метаданные. ``mf_selector`` [опционально]: задает поведение Сервера при наличии нескольких лиц на фотографии. Возможные значения ``mf_selector``: ``mf_selector`` [optional]: задает поведение Сервера при наличии нескольких лиц на фотографии или внутри заданного прямоугольника. Возможные значения: ``mf_selector`` [опционально]: задает поведение Сервера при наличии нескольких лиц на фотографии или внутри заданного прямоугольника. Возможные значения: ``n`` [опционально]: максимальное число лиц в выборке, одно по умолчанию. ``next_page``: URL к следующей странице результатов поиска (содержит путь и указатель на следующую порцию результатов). Если такого поля нет в ответе, значит, была выведена последняя страница. ``person_id``: уникальный идентификатор персоны в базе данных. ``photo1``: первая загруженная фотография или публичный URL фотографии. ``photo2``: вторая загруженная фотография или публичный URL фотографии. ``photo``: загруженная фотография или публичный URL фотографии. ``photo``: загруженная фотография или публичный URL фотографии. ``strict`` [опционально]: задает поведение Сервера на случай, если один или несколько шардов ``tntapi`` недоступны. Данный параметр имеет приоритет над параметром ``tntapi_ignore_search_errors`` в :ref:`файле конфигурации <configure-network>` ``findface-facenapi``. ``threshold`` [опционально]: пороговая степень схожести лиц для принятия положительного решения о совпадении. Задайте значение от 0 до 1 или используйте предустановленный порог: "strict" (высокий), "medium" (средний), "low" (низкий, установлен по умолчанию), "none" (не задан). По умолчанию сравнение выполняется при 0.75. ``x1, y1, x2, y2`` [опционально]: координаты прямоугольника на фотографии, внутри которого находится искомое лицо(а). Результат верификации: совпадает или не совпадает. Результат возвращается, если задано пороговое значение верификации. При наличии нескольких лиц на фотографиях результат указывается как для каждой пары лиц, так и на уровне фотографий. На уровне фотографий результат верификации будет положительным, если каждая пара лиц на них совпадает. Вероятность совпадения (степень схожести) лиц от 0 до 1. Координаты рамок с лицами на фотографиях. 