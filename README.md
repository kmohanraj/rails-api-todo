TODO API Application

create rails api app,
```

rails new todo --api -d postgresql

```

create model, 
````

rails g model name:string desc:string due_date:string status:string

````

Then create controller,

```

rails g controller todos index create update destroy

```

Then create database & migrate,
```

rails db:create db:migrate

```





