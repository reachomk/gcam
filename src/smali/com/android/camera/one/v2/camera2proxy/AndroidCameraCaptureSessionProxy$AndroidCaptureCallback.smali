.class final Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AndroidCameraCaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidCaptureCallback"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;


# direct methods
.method synthetic constructor <init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;

    invoke-direct {v2, p3}, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance v2, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;

    invoke-direct {v2, p3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;-><init>(Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;

    invoke-direct {v2, p3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p2}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceAborted(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureSequenceCompleted(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;->callback:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;->onCaptureStarted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/android/camera/error/UncaughtExceptionHandler;->crash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
