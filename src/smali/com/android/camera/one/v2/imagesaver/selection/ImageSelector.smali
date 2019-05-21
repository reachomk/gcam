.class public interface abstract Lcom/android/camera/one/v2/imagesaver/selection/ImageSelector;
.super Ljava/lang/Object;
.source "ImageSelector.java"


# virtual methods
.method public abstract selectBestImage(Ljava/util/List;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
