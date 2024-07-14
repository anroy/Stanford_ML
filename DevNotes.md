# Development notes

## Debugging Tip: Showing location of errors
Added: 2018-06-01

The submit script, for all the programming assignments, does not report the line number and location of the error when it crashes. The follow method can be used to make it do so which makes debugging easier.

Open ex3/lib/submitWithConfiguration.m and replace line:
```
fprintf('!! Please try again later.\n');
```

(around 28) with:
```
fprintf('Error from file:%s\nFunction:%s\nOn line:%d\n', e.stack(1,1).file,e.stack(1,1).name, e.stack(1,1).line );
```

Source: [Programming Ex.3 page](https://www.coursera.org/learn/machine-learning/resources/JOjNO)
