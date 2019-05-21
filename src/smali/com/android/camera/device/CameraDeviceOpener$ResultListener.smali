.class final Lcom/android/camera/device/CameraDeviceOpener$ResultListener;
.super Ljava/lang/Object;
.source "CameraDeviceOpener.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
    }
.end annotation


# instance fields
.field private final resultFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;)V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 362
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 363
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public final onDisconnected()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public final onError(I)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->RETRY:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->CONNECTED:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public final result(J)Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "awaitResult"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 377
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;->ERROR_TIMEOUT:Lcom/android/camera/device/CameraDeviceOpener$ResultListener$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceOpener$ResultListener;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 377
    :catch_1
    move-exception v0

    goto :goto_1
.end method
