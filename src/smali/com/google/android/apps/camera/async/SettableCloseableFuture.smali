.class public final Lcom/google/android/apps/camera/async/SettableCloseableFuture;
.super Ljava/lang/Object;
.source "SettableCloseableFuture.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/CloseableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/CloseableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field private exception:Ljava/lang/Throwable;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private removed:Z

.field private value:Lcom/google/android/apps/camera/async/SafeCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->listeners:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    .line 49
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 51
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->removed:Z

    .line 52
    return-void
.end method

.method public static create()Lcom/google/android/apps/camera/async/SettableCloseableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            ">()",
            "Lcom/google/android/apps/camera/async/SettableCloseableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;-><init>()V

    return-object v0
.end method

.method private final notifyListeners()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Runnable;

    .line 182
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lcom/google/android/apps/camera/async/ExecutorListenerPair;

    invoke-direct {v1, p2, p1}, Lcom/google/android/apps/camera/async/ExecutorListenerPair;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 111
    const/4 v0, 0x0

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    if-nez v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 162
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 163
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 170
    :cond_0
    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->notifyListeners()V

    .line 173
    :cond_1
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->exception:Ljava/lang/Throwable;

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isDone()Z
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final remove()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->removed:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "remove() called multiple times. A CloseableFuture should only have a single owner."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->removed:Z

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 143
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 62
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 63
    if-nez v4, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 66
    iput-object p1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 69
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v4, :cond_3

    .line 73
    invoke-interface {p1}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 77
    :goto_2
    if-nez v4, :cond_4

    :goto_3
    return v0

    :cond_1
    move v2, v1

    .line 64
    goto :goto_0

    :cond_2
    move v2, v1

    .line 65
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 75
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->notifyListeners()V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 77
    goto :goto_3
.end method

.method public final setException(Ljava/lang/Throwable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 89
    if-nez v4, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->value:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->exception:Ljava/lang/Throwable;

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->done:Z

    .line 95
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-nez v4, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->notifyListeners()V

    .line 101
    :cond_1
    if-nez v4, :cond_4

    :goto_2
    return v0

    :cond_2
    move v2, v1

    .line 90
    goto :goto_0

    :cond_3
    move v2, v1

    .line 91
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    .line 101
    goto :goto_2
.end method
