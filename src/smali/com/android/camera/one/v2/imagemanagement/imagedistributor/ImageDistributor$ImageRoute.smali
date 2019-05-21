.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;
.super Ljava/lang/Object;
.source "ImageDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageRoute"
.end annotation


# virtual methods
.method public abstract addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method
