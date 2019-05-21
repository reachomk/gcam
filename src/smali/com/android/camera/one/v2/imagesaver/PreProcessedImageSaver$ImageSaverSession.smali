.class public interface abstract Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
.super Ljava/lang/Object;
.source "PreProcessedImageSaver.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageSaverSession"
.end annotation


# virtual methods
.method public abstract addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close()V
.end method
