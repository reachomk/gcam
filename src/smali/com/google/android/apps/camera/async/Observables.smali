.class public final Lcom/google/android/apps/camera/async/Observables;
.super Ljava/lang/Object;
.source "Observables.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final NOOP_CALLBACK_HANDLE:Lcom/google/android/apps/camera/async/SafeCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$1;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Observables$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/async/Observables;->NOOP_CALLBACK_HANDLE:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/camera/async/Observables;->NOOP_CALLBACK_HANDLE:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method public static addCallback(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$16;

    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/async/Observables$16;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public static addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;)",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public static allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lcom/google/android/apps/camera/async/ListObservable;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/ListObservable;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/apps/camera/async/Observable",
            "<+TT;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 364
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static and(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .line 101
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Observables;->allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/Observables$4;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Observables$4;-><init>()V

    .line 100
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs and([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->and(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/android/apps/camera/async/DereferencedObservable;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static equal(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;TT;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$8;

    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/async/Observables$8;-><init>(Ljava/lang/Comparable;)V

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p0}, Lcom/google/android/apps/camera/async/FilteredObservable;->create(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fromFuture(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 311
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 312
    new-instance v1, Lcom/google/android/apps/camera/async/Observables$14;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/Observables$14;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V

    invoke-static {p1, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 2374
    invoke-static {v0}, Lcom/google/android/apps/camera/async/DereferencedObservable;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public static greaterOrEqual(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;TT;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$6;

    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/async/Observables$6;-><init>(Ljava/lang/Comparable;)V

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static min(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 250
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Observables;->allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/Observables$11;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Observables$11;-><init>()V

    .line 249
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/Observables$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 288
    new-instance v1, Lcom/google/android/apps/camera/async/Observables$13;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/Observables$13;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V

    invoke-static {p0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 301
    return-object v0
.end method

.method public static subtract(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 234
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/Observables$10;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Observables$10;-><init>()V

    .line 233
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sum(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .line 208
    invoke-static {p0}, Lcom/google/android/apps/camera/async/Observables;->allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/async/Observables$9;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Observables$9;-><init>()V

    .line 207
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<TI;TO;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/apps/camera/async/Observables$2;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/apps/camera/async/Observables$2;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;Lcom/google/android/apps/camera/async/Observable;)V

    .line 1405
    invoke-static {v0}, Lcom/google/android/apps/camera/async/FilteredObservable;->create(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 45
    return-object v0
.end method
