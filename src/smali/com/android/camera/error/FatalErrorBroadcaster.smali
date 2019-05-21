.class final Lcom/android/camera/error/FatalErrorBroadcaster;
.super Ljava/lang/Object;
.source "FatalErrorBroadcaster.java"

# interfaces
.implements Lcom/android/camera/error/FatalErrorHandler;


# instance fields
.field private fatalErrorHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/error/FatalErrorBroadcaster;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final addFatalErrorHandler(Lcom/android/camera/error/FatalErrorHandler;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/android/camera/error/FatalErrorBroadcaster$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/error/FatalErrorBroadcaster$1;-><init>(Lcom/android/camera/error/FatalErrorBroadcaster;Lcom/android/camera/error/FatalErrorHandler;)V

    return-object v0
.end method

.method public final onCameraDisabledFailure()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 81
    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraDisabledFailure()V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public final onCameraOpenFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 60
    invoke-interface {v0, p1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public final onCameraReconnectFailure()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 67
    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraReconnectFailure()V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public final onGenericCameraAccessFailure()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 74
    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public final onMediaRecorderFailure()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 53
    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onMediaRecorderFailure()V

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final onMediaStorageFailure()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster;->fatalErrorHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 46
    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onMediaStorageFailure()V

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
