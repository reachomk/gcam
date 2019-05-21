.class public interface abstract Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;
.super Ljava/lang/Object;
.source "ResourceCaptureTools.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;
    }
.end annotation


# virtual methods
.method public abstract getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
.end method

.method public abstract getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
.end method

.method public abstract getResourceOpenedCamera()Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract playCountDownSound(I)V
.end method

.method public abstract playCountDownStartSound()V
.end method

.method public abstract takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
.end method
