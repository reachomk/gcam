.class final Lcom/android/camera/one/v2/common/ResponseManagerImpl;
.super Ljava/lang/Object;
.source "ResponseManagerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/ResponseManager;
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/ResponseManager;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/android/camera/one/v2/common/RequestTransformer;",
        ">;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transformer:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->transformer:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->listeners:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->transformer:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/async/ConcurrentState;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->transformer:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v1, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->listeners:Ljava/util/List;

    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    .line 1045
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ResponseManagerImpl;->transformer:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 18
    return-object v0
.end method
