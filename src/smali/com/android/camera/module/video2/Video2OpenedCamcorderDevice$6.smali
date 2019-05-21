.class final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onPreviewLongPress(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 421
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 407
    check-cast p1, Ljava/lang/Boolean;

    .line 1410
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$3002(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;Z)Z

    .line 1412
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$3100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->showAffordance()V

    .line 407
    :cond_0
    return-void
.end method
