### Java

##### IO

    文件流: 磁盘
	Socket流: 网络
	字节/字符数组流: 内存(byte[], char[])
	缓冲流: 缓冲区(byte[], char[]), 装饰器模式
	对象流: 对象, 装饰器模式, 序列化/反序列化
	基本数据类型流: 基本数据类型, 装饰器模式
	编码: ASCII、ISO-8859-1、GB2312、GBK、UTF-8、UTF-16、Unicode

##### 序列化/反序列化

	枚举: name
	单例: writeReplace(), readResolve()
	安全性: 网络传输
	通用性: 跨平台、跨语言
	可扩展性: 是否支持自动加入新的字段
	性能: 空间开销(序列化大小)、时间开销(序列化/反序列化时间)
	序列化协议: stream、xml、json、thrift、protobuf
	序列化实现: java-built-in、hessian、fastjson、jackson、gson、Thrift、ProtoBuf

##### NIO

    IO: 单向、阻塞、流
	NIO: 双向、非阻塞、通道、缓冲区

	BIO: 同步阻塞IO
	NIO: 同步非阻塞IO
	AIO: 异步非阻塞IO

	Channel: 通道
	Buffer: 缓冲区
	Selector: 选择器

	同步: 串行执行
    异步: 并行执行, 通知
    阻塞: 一直等待, 直到条件满足
    非阻塞: 不会等待, 轮询

    IO底层: 检查数据是否就绪、数据拷贝(内核拷贝到用户线程)

    阻塞IO: 用户线程一直等待直到数据就绪
    非阻塞IO: 数据未就绪, 直接返回标志信息给用户线程
    同步IO: 用户线程将数据从内核拷贝到用户线程
    异步IO: 内核将数据从内核拷贝到用户线程, 然后发送信号通知用户线程

	阻塞IO模型: 用户线程等待数据就绪, 然后将数据从内核拷贝到用户线程
	非阻塞IO模型: 用户线程不断轮询数据是否就绪, 数据就绪后, 用户线程将数据从内核拷贝到用户线程
	多路复用IO模型(NIO): 一个线程管理多个socket, 不断轮询socket状态, socket就绪后, 用户线程将数据从内核拷贝到用户线程
	信号驱动IO模型: 内核等待数据就绪, 数据就绪后发送信号通知用户线程
	异步IO模型: 内核等待数据就绪, 数据就绪后, 内核拷贝数据到用户线程, 然后发送信号通知用户线程

	多线程IO模式: 一个IO一个线程
	线程池IO模式: 线程池
	Reactor模式(多路复用IO模型): 注册事件、轮询事件、分发事件
	Proactor模式(异步IO模型): 注册事件、轮询事件、异步IO(内核拷贝数据到用户线程)、分发事件

##### 集合

    fail-fast机制: ConcurrentModificationException
	比较器: Comparator、Comparable, Collections.sort()、Arrays.sort()、TreeSet、TreeMap
	迭代器: Iterator、Enumeration
	List: ArrayList、Vector、Stack、LinkedList
	Set: HashSet、TreeSet
	Map: HashMap、Hashtable、TreeMap
	Queue(队列): LinkedList、PriorityQueue
	Deque(双向队列): Queue、ArrayDeque
	Arrays、Collections

	ArrayList: Object[]
	Vector: synchronized
	LinkedList: 双向链表
	HashSet: HashMap
	TreeSet: TreeMap
	HashMap: Node<K,V>[]
	Hashtable: synchronized
	TreeMap: 红黑树
	PriorityQueue: Object[], 平衡二叉堆
	ArrayDeque: Object[]

##### 多线程

    Thread、Runnable
	Object: wait()、notify()、notifyAll()
	Thread: sleep()、join()、interrupt()
	ThreadLocal

##### 网络编程

    网络协议: TCP/IP、UDP、HTTP、SSL
	URL、Socket、HttpURLConnection

##### 反射

	Java反射
    javassist: 运行时分析、编辑、创建字节码
	应用: IOC、AOP、RPC

##### 动态代理

    JDK动态代理: 代理接口
	CGlib: 代理接口或类
	asm
	javassist
	应用: AOP、RPC

##### 设计模式

    简单工厂模式: 一个工厂, 创建多个产品
	工厂方法模式: 多个工厂, 一个工厂创建一个产品
	抽象工厂模式: 多个工厂, 一个工厂创建一个产品簇
	单例模式: 控制一个类只有一个实例, 懒汉, 饿汉, 枚举, 静态内部类, 双重检查锁
	原型模式: 对象拷贝, 浅复制, 深复制
	建造者模式: 分离对象的构建和表示, Director(不变) -> Builder(可变) -> Product

	适配器模式: 接口转换
    桥接模式: 多维度变化时, 分离抽象部分与实现部分
    组合模式: 创建整体部分的树形层次结构
    装饰器模式: 接口不变, 扩展对象的功能
    门面模式: 为子系统提供一个高层次的接口
    享元模式: 运用共享技术有效地支持大量细粒度的对象
    代理模式: 为对象提供一个代理对象, 控制对原对象的访问

    职责链模式: 对象组成链, 请求沿链传递, 链表实现、数组实现
    命令模式: 解耦请求方和实现方, 请求方 -> 命令 -> 实现方
    解释器模式: 定义一种文法和一个解释器用来解释该文法
    迭代器模式: 元素遍历
    中介者模式: 封装一系列的对象交互, 解耦, 对象 <> 中介对象 <> 对象
    备忘录模式: 保存和恢复对象的内部状态
    观察者模式: 多个观察者监听一个主题, 主题状态变化时, 通知所有观察者
    状态模式: 状态改变时改变行为
    策略模式: 定义一组算法, 可以相互替换
    模板方法模式: 固定算法骨架, 延迟子类实现
    访问者模式: 固定数据结构中元素, 访问者的实现可变

**************************************************

### JVM

##### javac编译

	字节码: javap -c
    解语法糖

##### 语法糖

    断言: assert, AssertionError
	自动拆箱装箱: 基本数据类型、包装类型
	枚举: 继承Enum
	增强for循环: 迭代器
	泛型: 类型擦除, 强制类型转换
	条件编译
	内部类
	switch字符串: 先hashcode(), 后equals()
	try-with-resources: AutoCloseable, 自动close()
	可变长参数: 数组

##### class文件结构

    u4 magic
    u2 minor_version
    u2 major_version
    u2 constant_pool_count
    cp_info constant_pool[constant_pool_count - 1]
    u2 access_flags
    u2 this_class
    u2 super_class
    u2 interfaces_count
    u2 interfaces[interfaces_count]
    u2 fields_count
    field_info fields[fields_count]
    u2 methods_count
    method_info methods[methods_count]
    u2 attributes_count
    attribute_info attributes[attributes_count]

##### jvm指令集(java se 8)

	指令格式: Opcode Operand1 Operand1 ...

	1) 常量指令
	2) 加载指令
	3) 存储指令
	4) 操作数栈指令
	5) 算术指令
	6) 类型转换指令
	7) 比较指令
	8) 控制指令
	9) 对象指令
	10) 扩展指令
	11) 保留指令

##### jvm内存模型

    程序计数器: 线程私有
	Java虚拟机栈: 线程私有, 栈帧(局部变量表、操作数栈、动态链接、方法出口), OutOfMemoryError、StackOverflowError
	本地方法栈: Native方法, OutOfMemoryError
	Java堆: 线程共享, 分配对象, 新生代(Eden、From Survivor、To Survivor)、老年代、永久代, OutOfMemoryError
	方法区: 线程共享, 永久代, 存储虚拟机加载的类信息、常量、静态变量, OutOfMemoryError
	运行时常量池: 线程共享, OutOfMemoryError
	直接内存: OutOfMemoryError

##### 类加载机制

    1) 获取类的二进制字节码(jar包、网络、asm)
	2) 解析二进制字节码转化为方法区中类的运行时数据结构
	3) Java堆中生成一个Class对象, 作为方法区中类信息的访问入口
	4) 类静态变量分配内存, 初始化默认值
	5) 类初始化: 父类初始化, 静态变量赋值, static静态代码块执行
	6) 对象初始化: 分配内存, 初始化父对象, 类实例变量赋值, 执行构造函数

	双亲委派机制
	启动类加载器、扩展类加载器、系统类加载器
	BootstrapClassLoader(C实现) -> Launcher -> Launcher.ExtClassLoader、Launcher.AppClassLoader(系统类加载器)

##### 垃圾标记算法

    1) 引用计数算法
    2) 可达性分析算法

##### 垃圾收集算法

    1) 标记清除算法
	2) 复制算法
	3) 标记整理算法
	4) 分代收集算法

##### 垃圾收集器

    1) Serial收集器
	2) ParNew收集器
	3) Parallel Scavenge收集器
	4) Serial Old收集器
	5) Parallel Old收集器
	6) CMS收集器
	7) G1收集器

##### 堆内存分配

    1) 对象优先在Eden分配
	2) 大对象直接进入老年代
	3) 长期存活的对象进入老年代

##### GC

    新生代GC: Minor GC、Young GC
	老年代GC: Major GC、Full GC

##### 内存调优

    -Xss128k
	-Xmn1G
	-XX:NewRatio=3
	-Xms4G
	-Xmx4G
    -XX:SurvivorRatio=8
    -XX:MaxTenuringThreshold=10
    -XX:PermSize=6M
    -XX:MaxPermSize=6M

##### GC调优

    垃圾收集器搭配
	监控工具: JConsole、VisualVM
	GC日志: -verbose:gc、-XX:+PrintGC、-XX:PrintGCDetails、-XX:+PrintGCTimeStamps、-Xloggc

##### 诊断

    内存泄漏: jmap
    线程: 等待、锁竞争、死锁, jstack

**************************************************

### 开源框架(原理和机制)

##### Struts2

##### Spring

##### MyBatis

    半自动的ORM: sql参数映射, 结果集映射
	sql从代码中分离: xml配置、注解配置
	封装JDBC代码、参数设置、结果集检索
	动态sql
	缓存: 一级缓存、二级缓存
	事务管理
	数据库连接池

	MappedStatement
	SqlSessionFactoryBuilder - > SqlSessionFactory -> SqlSession
	SqlSession -> Mapper -> MapperProxy -> MapperMethod -> SqlSession
	SqlSession -> Executor -> StatementHandler -> ResultSetHandler

**************************************************

### 分布式

##### 分布式节点

    无状态节点: 应用服务器
	有状态节点: 缓存、数据库

##### 分布式RPC

    Dubbo
    Hessian
    Thirft

##### 分布式事务

	2PC: 两阶段提交协议
	消息队列实现

##### 远程通讯

	请求转化: 序列化
	传输格式: stream、xml、json
	传输协议: tcp/ip、http、udp
	网络IO: bio、nio、aio

**************************************************

### 缓存

##### Redis

##### Memcached

##### 数据缓存

	本地缓存
	集中式缓存
	分布式缓存: 缓存服务化
	缓存命中率: 缓存划分力度, 业务相关性, 缓存有效期

**************************************************

### 消息

##### 消息

	消息类型: 点对点、发布/订阅
	消息顺序: 有序、无序
	消息模型: push、pull
	消息存储: 持久化、非持久化
	消息优先级

##### JMS

##### Kfaka

##### ActiveMQ

##### 异步消息驱动

**************************************************

### 中间件

##### RPC中间件

##### 消息中间件

##### 缓存中间件

##### 数据库中间件

##### 文件中间件

**************************************************

### 高性能/高并发

##### 多线程带来的问题及解决方案

	1) 原子性
	2) 可见性
	3) 一致性
	4) 线程创建开销: 线程池
	5) 线程上下文切换开销:  CAS(非阻塞), 减少线程
	6) 资源限制: CPU、IO、网络连接

##### JMM(Java内存模型) - 多线程间的内存可见性问题

	OS: CPU － 高速缓存 － 缓存一致性协议 － 内存
	JVM: 线程 － 工作内存(共享变量的副本) － JMM － 主内存(共享变量)

##### 重排序 - 多线程间的内存可见性问题

	1) 编译器优化重排序: 编译器重排序
	2) 指令级并行重排序: 处理器重排序
	3) 内存系统重排序: 处理器重排序

	1) 数据依赖性: 两个操作访问同一变量, 其中有一个为写操作, 单线程下, 不会被重排序
	2) 控制依赖性: 单线程下, 可以被重排序, 但不改变执行结果
	3) as-if-serial: 重排序不改变单线程的执行结果

##### 内存屏障 - 禁止特定类型的处理器重排序

	1) LoadLoad Barriers: Load1; LoadLoad; Load2;
	2) StoreStore Barriers: Store1; StoreStore; Store2;
	3) LoadStore Barriers: Load1; LoadStore; Store2;
	4) StoreLoad Barriers: Store1; StoreLoad; Load2;

	StoreLoad

##### happens-before - JMM提供的内存可见性保证

	happens-before关系: 前一个操作的执行结果对后一个操作可见, 且前一个操作的执行顺序排在第二个操作之前

	1) 程序顺序规则: 同一个线程中的每个操作都happens-before其后的任何一个操作
    2) 监视器锁规则: 对一个监视器的解锁happens-before于后续对同一个监视器的加锁
    3) volatile变量规则: 对volatile字段的写入操作happens-before于后续的同一个字段的读操作
    4) start()规则: Thread.start()的调用会happens-before于启动线程里面的动作
    5) join()规则: Thread中的所有动作都happens-before于其他线程检查到此线程结束或者Thread.join()中返回或者Thread.isAlive()==false
    6) interrupt(): 一个线程A调用另一个线程B的interrupt()都happens-before于线程A发现B被A中断(B抛出异常或者A检测到B的isInterrupted()或者interrupted())
    7) 对象规则: 一个对象构造函数的结束happens-before与该对象的finalizer的开始
    8) 传递性: 如果A动作happens-before于B动作, 而B动作happens-before与C动作，那么A动作happens-before于C动作

##### 顺序一致性 - JMM对正确同步的多线程的内存一致性保证

	顺序一致性: 如果程序是正确同步的, 程序的执行将具有顺序一致性, 即程序的执行结果与程序在顺序一致性内存模型中的执行结果相同
	顺序一致性内存模型: 理论参考模型
		1) 一个线程的所有操作必须按照程序的顺序来执行
		2) 所有线程都只能看到一个单一的操作执行顺序

##### JMM变量的原子操作

	lock: 锁定主内存中的变量
	unlock: 解锁主内存中的变量
	read: 主内存读到工作内存
	load: read得到的变量放入工作内存放入变量副本
	use: 工作内存中变量副本的值传递给执行引擎
	assign: 执行引擎赋值给工作内存中变量副本
	store: 工作内存中变量副本的值传递给主内存
	write: store的值写入主内存

	lock - unlock
	(read - load) - use
	assign - (store - write)

##### volatile - 解决内存可见性

	happens-before: volatile写 happens-before volatile读
	volatile写的内存语义: 写一个volatile变量时, JMM会把该线程对应的工作内存中的共享变量值刷新到主内存
	volatile读的内存语义: 读一个volatile变量时, JMM会把该线程对应的工作内存置为无效, 直接从主内存读取共享变量
	volatile禁止的重排序: 变量读写 volatile写 volatile读 变量读写

	StoreStore volatile写 StoreLoad
	volatile读 LoadLoad LoadStore

##### synchronized

	happens-before: 锁释放 happens-before 锁获取
	锁释放的内存语义: 锁释放时, JMM会把该线程对应的工作内存中的共享变量值刷新到主内存
	锁获取的内存语义: 锁获取时, JMM会把该线程对应的工作内存置为无效, 直接从主内存读取共享变量

	monitorenter、monitorexit

##### CAS(Compare And Swap)

	CAS内存语义的实现: lock
		1) 对内存的读－改－写操作原子执行
		2) 禁止该指令和之前之后的读写指令重排序
		3) 写缓冲区的所有数据刷新到内存

	CAS同时具有volatile读和volatile写的内存语义

##### volatile + CAS组合实现的内存可见性 - concurrent实现的基础

	1) volatile写 - volatile读
	2) volatile写 - CAS更新
	3) CAS更新 - volatile读
	4) CAS更新 - CAS更新

##### AQS(AbstractQueuedSynchronizer) - 依赖volatile + CAS实现

##### ReentrantLock - 基于AQS实现

	公平锁
		FairSync.lock: getState(), volatile读
		FairSync.unlock: setState(state), volatile写
	非公平锁
		NonfairSync.lock(): compareAndSetState():
		NonfairSync.unlock(): setState(state), volatile写

##### java.util.concurrent

	并发包基础: volatile、CAS(Compare And Swap)、AQS(AbstractQueuedSynchronizer)
	原子类
	锁: ReentrantLock、ReentrantReadWriteLock、Condition、LockSupport
	并发扩展: Semaphore、CyclicBarrier、CountDownLatch
	线程池: Callable、Future、Executor
	并发集合: ConcurrentHashMap、CopyOnWriteArrayList、CopyOnWriteArraySet、ArrayBlockingQueue、LinkedBlockingQueue

	ArrayBlockingQueue: Object[], takeIndex, putIndex, count, lock, notEmpty, notFull

##### final - 保证对象的正确初始化

	写final域的重排序规则: JMM禁止把final域的写重排序到构造函数之外
		JMM实现: 写final域之后, 构造函数return之前, 插入StoreStore
	读final域的重排序规则: JMM禁止重排序初次读对象引用与初次读该对象的final域
		JMM实现: 读final域前插入LoadLoad

**************************************************

### 数据库

##### 数据库事务

##### MySQL

    B-Tree、B+Tree
	主索引、辅助索引
	MyISAM: B+Tree, 非聚集索引(数据文件和索引文件分离)
	InnoDB: B+Tree, 聚集索引(数据文件就是主索引文件, 按主键聚集, 辅助索引记录主键的值)
	聚集索引: 主索引查询高效, 辅助索引查询两次索引
	非聚集索引
	binlog

##### 垂直拆分

	分库: 按功能模块分库

##### 水平拆分

	分库: 划分到不同的数据库
	分表: 单表拆分为子表
	主从: 主从同步, 读写分离

##### binlog解析

	数据变更 -> 发布订阅系统 -> push/pull

##### KV Store

**************************************************

### 架构

##### MVC

    模型
	视图
	控制器

##### AOP

    面向切面编程
	实现: 动态代理
	应用: 性能监控、权限控制、事务管理、日志记录

##### BIO

	同步阻塞
	accept -> New Thread(read -> decode -> process -> encode -> write)
	accept -> Queue + Thread Pool(read -> decode -> process -> encode -> write)

##### NIO和Reactor模式

	同步非阻塞
	read request -> decode request -> process service -> encode reply -> write reply
	MainReactor: acceptor
	SubReactor: read、write
	Dispatch(Thread Pool): decode、process、encode

##### 技术方案

    sso, 单点登录
	一致性hash, 分布式缓存
	全文检索, lucene
	负载均衡
	连接池

**************************************************

### 业务场景

##### 秒杀减库存

	秒杀系统独立部署
	秒杀的库存单独推送到秒杀系统
	异步队列

**************************************************

### Linux

##### Shell

**************************************************

### 操作系统

##### CPU

    CPU寄存器 > L1 > L2 > L3 > 跨槽 > 内存 > 磁盘
    L1 Cache: L1 Data Cache、L2 Instruction Cache
    L2 Cache
    L3 Cache
    Cache Line: 缓存行, 64个字节, CPU最小操作单位
    	1) Cache Miss: 缓存未命中, 按照数据的物理顺序访问数据(二维数组)
    	2) Cache冲突: 避免缓存行冲突, 补齐缓存行, 伪共享
    	3) Cache满: 减少操作的数据大小

##### 内存

##### 磁盘

##### IO

**************************************************

### 开发工具

##### Git

##### Maven

##### IntelliJ IDEA

**************************************************

### 源码

##### JDK源码

##### Tomcat源码

##### Struts2源码

##### Spring源码

##### MyBatis源码

##### Netty源码
