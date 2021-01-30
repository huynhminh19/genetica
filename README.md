# genetica
![alt text](https://github.com/huynhminh19/genetica/blob/main/state_diagram.png)

## Installation

import data từ file genetica.sql vô PostgreSQL

## Usage
Status table:

```
 CODE  NAME
	aMySe	Phòng lab ở Mỹ gửi lại kết quả giải mã gen
	9MyDe	Phòng lab ở Mỹ thực hiện việc giải mã gen
	8MyAc	Phòng lab ở Mỹ thực hiện tách chiết DNA
	7GeDe	Genetica gửi gói hàng cho đơn vị vận chuyển
	6GeEn	Genetica đóng gói các mẫu DNA vào thành 1 gói
	5Deli	Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ
	4HNSe	Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica
	3HNRe	Phòng lab ở Hà Nội thực hiện việc kiểm định mẫu nước bọt
	2GeSe	Genetica gửi bộ thu mẫu đến phòng lab ở Hà Nội
	1GeRe	Genetica nhận được bộ thu mẫu từ phía khách hàng
```

Login:

```

admin/1234

genetica/Minh1234  : có thể view và update status cho những mẫu có status code là ['1GeRe', '2GeSe', '5GeEn', '6GeDe']

hanoi/Minh1234  : có thể view và update status cho những mẫu có status code là ['3HNRe', '4HNSe']

vanchuyen/Minh1234  : có thể view và update status cho những mẫu có status code là ['7Deli']

my/Minh1234  : có thể view và update status cho những mẫu có status code là ['8MyAc', '9MyDe', 'aMySe']

```



