.class public abstract Lcom/android/ex/camera2/portability/CameraAgent;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgnt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    return-void
.end method

.method static synthetic access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public final closeCamera$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7DD2ILG_(Z)V
    .locals 7

    .prologue
    .line 309
    if-eqz p1, :cond_1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$2;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "camera release"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 323
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$3;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public abstract getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end method

.method protected abstract getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.end method

.method protected abstract getCameraHandler()Landroid/os/Handler;
.end method

.method protected abstract getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
.end method

.method protected abstract getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
.end method

.method public final openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 2

    .prologue
    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract recycle()V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method
