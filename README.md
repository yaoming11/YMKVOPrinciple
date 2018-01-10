# YMKVOPrinciple
代码实现KVO(runtime),仿照系统KVO实现方式，采用Block回调。

1.新建一个继承自原来类的子类KVOClassPrefix_class,对应的是系统的NSKVONotifying_class.  
2.将原来类的isa指针指向新建的子类KVOClassPrefix_class。对应系统的class类型的伪装。  
3.给KVOClassPrefix_class添加重写的 setter 方法。对应的值变化后在这里作出的反应抛出变化。  
4.使用关联对象添加这个观察者。
