��    
      l               �   !   �   �   �   /   �  &   �  
   �  8   �  (   &  �   O  ,     �  1  )   #  1  M  4     C   �  \   �  G   U  �   �  �  >  s   �	   Delete the ``preindex.bin`` file. Do not forget to remove obsolete index files on the replica in order to avoid unnecessary index transitions, should the master instance and replica be heavily out of sync. Do not move the index file to another location! Enable the fast index for the gallery. Fast Index Install the ``findface-tarantool-build-index`` utility. Prepare a file for generating the index: Search through the gallery should now be significantly faster. Information about the index remains in the service space, so when you restart Tarantool, index will also be uploaded. To prepare the fast index, do the following: Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-16 13:09+0300
PO-Revision-Date: 2017-11-14 12:53+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Удалите файл ``preindex.bin``. Рекомендуется удалять все файлы индекса на реплике, кроме последнего, во избежание промежуточных обновлений индекса в случае сильного отставания реплики от мастера. Не перемещайте файл индекса! Включите быстрый индекс для галереи. Индексирование для быстрого поиска по базе данных Установите утилиту ``findface-tarantool-build-index``. Сохраните пространство ``preindex`` в файл, который будет использован для генерации индекса: После включения быстрого индекса поиск по галерее должен стать значительно быстрее (в 70-100 раз). Информация об индексе остается в служебном пространстве Tarantool, поэтому когда вы перезапускаете Tarantool, индекс также подгружается. Для подготовки быстрого индекса выполните следующие действия: 