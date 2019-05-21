.class public final Lcom/android/camera/async/AsyncInitializationBuilder;
.super Ljava/lang/Object;
.source "AsyncInitializationBuilder.java"


# instance fields
.field private exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/android/camera/debug/Logger;

.field private final startFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->startFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 40
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->startFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/async/AsyncInitializationBuilder;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/error/UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

    return-object v0
.end method

.method public static with(Ljava/util/concurrent/Executor;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-direct {v0, p0}, Lcom/android/camera/async/AsyncInitializationBuilder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->startFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->startFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/async/AsyncInitializationBuilder$5;

    invoke-direct {v2, p0}, Lcom/android/camera/async/AsyncInitializationBuilder$5;-><init>(Lcom/android/camera/async/AsyncInitializationBuilder;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->startFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 238
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final then(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/apps/camera/async/Initializer;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/async/AsyncInitializationBuilder;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    const-string v2, "Futures.transform: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/async/AsyncInitializationBuilder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/async/AsyncInitializationBuilder$1;-><init>(Lcom/android/camera/async/AsyncInitializationBuilder;Ljava/lang/String;Ljavax/inject/Provider;)V

    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 82
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 107
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    const-string v3, "DONE: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/DebugModule;->logFuture(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/debug/Logger;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-object p0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final thenStartAll(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/behavior/Behavior;",
            ">(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/async/AsyncInitializationBuilder;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->lastFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/async/AsyncInitializationBuilder$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/async/AsyncInitializationBuilder$4;-><init>(Lcom/android/camera/async/AsyncInitializationBuilder;Ljava/lang/String;Ljavax/inject/Provider;)V

    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 231
    return-object p0
.end method

.method public final withExceptionHandler(Lcom/android/camera/error/UncaughtExceptionHandler;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->exceptionHandler:Lcom/android/camera/error/UncaughtExceptionHandler;

    .line 45
    return-object p0
.end method

.method public final withLogger(Lcom/android/camera/debug/Logger;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->logger:Lcom/android/camera/debug/Logger;

    .line 55
    return-object p0
.end method

.method public final withTrace(Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/async/AsyncInitializationBuilder;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 50
    return-object p0
.end method
