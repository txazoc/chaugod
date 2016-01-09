### 源码

	java.lang.AutoCloseable: close(), try-with-resource语法糖

	java.lang.Comparable: Arrays.sort()、Collections.sort()、TreeSet、TreeMap

	java.lang.ClassLoader

	java.lang.Class
		forName(): native
		newInstance(): Constructor.newInstance()
		getResource(): ClassLoader.getResource()
		getResourceAsStream(): ClassLoader.getResourceAsStream()
	
	java.lang.reflect.Constructor
		newInstance()
	
	java.lang.Object
		hashcode(): native, HashMap
		equals(): ==
		wait(): native
		notify(): native
		notifyAll(): native

	java.lang.String
		final char value[]
		String()
		equals()
		substring(): new String(value, begin, length)
		matches(): Pattern.matches(regex, this)
		trim(): substring(lo, hi)
		toCharArray(): System.arraycopy()
		intern(): native

	java.lang.Byte: valueOf(), ByteCache
    java.lang.Character: valueOf(), CharacterCache
    java.lang.Short: valueOf(), ShortCache
    java.lang.Integer: valueOf(), IntegerCache
	java.lang.Long: valueOf(), LongCache

	java.lang.Enum
		final String name、final int ordinal
		valueOf(): 反射调用values()获取枚举实例数组，封装为HashMap<String, T>

	java.lang.Thread
    		ThreadLocal.ThreadLocalMap

	java.lang.ThreadLocal
		get(): Thread.currentThread().threadLocals.get(this)
		set(): Thread.currentThread().threadLocals.set(this, value)
		remove(): Thread.currentThread().threadLocals.remove(this)

	java.lang.System
		InputStream in
		PrintStream out
		PrintStream err
		Properties props
		currentTimeMillis(): native
		arraycopy(): native
		getProperties()
		getProperty()
		setProperty()
