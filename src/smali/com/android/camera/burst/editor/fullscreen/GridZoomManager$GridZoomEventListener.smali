.class public interface abstract Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;
.super Ljava/lang/Object;
.source "GridZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GridZoomEventListener"
.end annotation


# virtual methods
.method public abstract onDelete(Landroid/net/Uri;)V
.end method

.method public abstract onEdit(Landroid/net/Uri;)V
.end method

.method public abstract onShare(Landroid/net/Uri;)V
.end method

.method public abstract onSwipeableThumbnailNeeded(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onZoomInStarted()V
.end method

.method public abstract onZoomOutFinished()V
.end method

.method public abstract onZoomOutStarted(Lcom/android/camera/data/BurstFrameItem;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;
.end method
