.class final Lcom/android/camera/burst/CameraAppBurstLivePreviewController$5;
.super Ljava/lang/Object;
.source "CameraAppBurstLivePreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/CameraAppBurstLivePreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$5;->val$roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$5;->val$roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->stopFlashThumbnail()V

    .line 152
    return-void
.end method
