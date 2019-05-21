.class public Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;
.super Ljava/lang/Object;
.source "AndroidCaptureResultProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;


# instance fields
.field final captureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 21
    return-void
.end method


# virtual methods
.method public final get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getFrameNumber()J
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    return-object v0
.end method
