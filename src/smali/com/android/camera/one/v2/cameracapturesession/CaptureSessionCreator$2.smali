.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->run()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
        ">;",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Ljava/util/List;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Deferred futures complete."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 263
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 264
    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Finishing deferred output configuration."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;

    .line 269
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;->getAndroidOutputConfiguration()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$1300(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 277
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$1300(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 278
    return-object p1

    .line 271
    :cond_1
    :try_start_1
    invoke-interface {p1, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->finishDeferredConfiguration(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;->apply(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Ljava/util/List;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v0

    return-object v0
.end method
