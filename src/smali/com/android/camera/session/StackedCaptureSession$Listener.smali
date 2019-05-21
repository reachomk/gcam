.class interface abstract Lcom/android/camera/session/StackedCaptureSession$Listener;
.super Ljava/lang/Object;
.source "StackedCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/StackedCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onStackedItemFailed(Landroid/net/Uri;)V
.end method

.method public abstract onStackedItemFinished(Landroid/net/Uri;Lcom/google/common/base/Optional;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onThumbnailUpdated$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNM8SJ1ETGM4R355T274OBNC5H6OPAICLPMUTBICDIJMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONL6T31CDLMAP23C5O78TBICL9MASRJD5NMS92JEHGM6QQ9EHIMQL3PE1IJMAAM(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;II)V
.end method
