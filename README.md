# SwiftThreadLocal

Java like `ThreadLocal` api,  but for `pure Swift`.

Support  Linux, Android, OSX ...

## Usage

```swift

// Swift

private static let transactionNestedCount: ThreadLocal<Int> = ThreadLocal<Int>(create: { 0 })

```

equals to java

```java

// Java

private static final ThreadLocal<Integer>
    transactionNestedCount = new ThreadLocal<Integer>() {
        @Override
        protected Integer initialValue() {
            return 0;
        }
    };

```
