.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/android/camera/camcorder/media/MediaRecorderStarter;Lcom/android/camera/camcorder/media/MediaRecorderStopper;Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/core/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/aaa/FocusPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private isFirstCallback:Z

.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;->isFirstCallback:Z

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 225
    check-cast p1, Lcom/google/android/apps/camera/aaa/FocusPoint;

    .line 1231
    iget-boolean v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;->isFirstCallback:Z

    .line 1233
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-virtual {v0, p1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V

    goto :goto_0
.end method
