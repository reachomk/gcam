.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
.super Ljava/lang/Object;
.source "ManagedImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;,
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;
    }
.end annotation


# virtual methods
.method public abstract getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;",
            ">;"
        }
    .end annotation
.end method
