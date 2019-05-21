.class public interface abstract Lcom/android/camera/camcorder/CamcorderCaptureSession;
.super Ljava/lang/Object;
.source "CamcorderCaptureSession.java"

# interfaces
.implements Lcom/android/camera/one/AutoFocusTrigger;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract startRecording(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
            ">;"
        }
    .end annotation
.end method
