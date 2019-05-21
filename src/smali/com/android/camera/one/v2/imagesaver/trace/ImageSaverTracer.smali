.class public interface abstract Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;
.super Ljava/lang/Object;
.source "ImageSaverTracer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;,
        Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$Factory;
    }
.end annotation


# virtual methods
.method public abstract addInputImageMetadata(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close()V
.end method
