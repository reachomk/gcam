.class public interface abstract Lcom/android/camera/camcorder/CamcorderDevice;
.super Ljava/lang/Object;
.source "CamcorderDevice.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoFocusStateTransition()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation
.end method
