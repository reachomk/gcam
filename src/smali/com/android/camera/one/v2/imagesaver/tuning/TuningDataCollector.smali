.class public interface abstract Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;
.super Ljava/lang/Object;
.source "TuningDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;
    }
.end annotation


# virtual methods
.method public abstract addRawImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
.end method

.method public abstract addSelectedBaseFrame(J)V
.end method

.method public abstract addTotalCaptureResult(JLcom/google/common/util/concurrent/ListenableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
.end method

.method public abstract markCaptureStart(Ljava/lang/String;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;
.end method
