.class final Lcom/android/camera/app/CameraActivityControllerImpl$20;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onFatalError()V
    .locals 2

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6600(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    :goto_0
    return-void

    .line 2775
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6602(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 2778
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1700(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const-string v1, "CameraActivityController: Fatal error during onPause!"

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->finishActivityWithReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$20;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method


# virtual methods
.method public final onCameraError(I)V
    .locals 3

    .prologue
    .line 2743
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method public final onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 2749
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera Exception"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2750
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x4

    .line 2751
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 2756
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl$20;->onFatalError()V

    .line 2757
    return-void
.end method

.method public final onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2761
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DispatchThread Exception"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2762
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2763
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 2768
    invoke-direct {p0}, Lcom/android/camera/app/CameraActivityControllerImpl$20;->onFatalError()V

    .line 2769
    return-void
.end method
