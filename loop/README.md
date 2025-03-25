# loopに関するディレクティブまとめ
* リソースに対してループするcountパラメータ
```
count = カウント数
ARRAY[index]
<PROVIDER>_<TYPE>.<NAME>[INDEX].ATTRIBUTE
```

* リソースやリソース内のインラインブロックに対してループするfor_each式
```
for_each = <COLLECTION>
each.key each.valueでアクセス
```

* リストやマップに対してループするfor式
リスト内包表記
```
[for <ITEM> in <LIST> : <OUTPUT>]
[for <KEY>, <VALUE> in <MAP> : <OUTPUT>]
[for <ITEM> in <LIST> : <OUTPUT_KEY> => <OUTPUT_VALUE>]
[for <KEY>, <VALUE> in <MAP> : <OUTPUT_KEY> => <OUTPUT_VALUE>]
```

* 文字列内のリストやマップに対してループするfor文字列命令
```
"%{ for <ITEM> in <COLLECTION> }<BODY>%{ endfor }"
"%{ for <INDEX>, <ITEM> in <COLLECTION> }<BODY>%{ endfor }"
```