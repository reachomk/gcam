.class final Lcom/android/camera/module/capture/CaptureModule$26;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$26;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1603
    check-cast p1, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    .line 2606
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$26;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    sget-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->RUNNING:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3802(Lcom/android/camera/module/capture/CaptureModule;Z)Z

    .line 2607
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$26;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3800(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$26;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3900(Lcom/android/camera/module/capture/CaptureModule;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/capture/CaptureModule$26$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureModule$26$1;-><init>(Lcom/android/camera/module/capture/CaptureModule$26;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1603
    :cond_0
    return-void

    .line 2606
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
