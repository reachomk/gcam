.class final Lcom/android/camera/burst/CameraAppBurstLivePreviewController$1;
.super Ljava/lang/Object;
.source "CameraAppBurstLivePreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/CameraAppBurstLivePreviewController;->start$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ2ELP76T2DDTI6AEP9AO______()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$burstChip:Lcom/google/android/apps/camera/burstchip/BurstChip;

.field private synthetic val$photoVideoPaginator:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/burstchip/BurstChip;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$1;->val$burstChip:Lcom/google/android/apps/camera/burstchip/BurstChip;

    iput-object p2, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$1;->val$photoVideoPaginator:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$1;->val$burstChip:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->showBurstInProgress()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/burst/CameraAppBurstLivePreviewController$1;->val$photoVideoPaginator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    return-void
.end method
