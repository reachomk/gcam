.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCallback"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;B)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V

    return-void
.end method


# virtual methods
.method public final onActive(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onClosed(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    invoke-direct {v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 163
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->close()V

    .line 164
    return-void
.end method

.method public final onConfigureFailed(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Capture session failed to configure!"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;

    const-string v1, "The capture session configuration failed!"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 126
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->close()V

    .line 128
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/Lifetime;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$300(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final onConfigured(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    if-nez v0, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->close()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 142
    return-void
.end method

.method public final onReady(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final onSurfacePrepared(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$400(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$500(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$500(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Surface prepared: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 158
    return-void

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
