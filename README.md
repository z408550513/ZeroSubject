# ZeroSubject
```
let subject = ZeroSubject()
        subject.subscribeNext { (value) in
            print(value)
        }
        subject.sendNext(1)
```