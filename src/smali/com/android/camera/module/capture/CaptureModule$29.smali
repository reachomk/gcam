.class final Lcom/android/camera/module/capture/CaptureModule$29;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


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
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/OneCamera;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;

.field private synthetic val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private synthetic val$isCameraLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;Lcom/google/android/apps/camera/async/IsClosed;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$29;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$29;->val$isCameraLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModule$29;->val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1847
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 1848
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCamera open sequence was canceled, shutting down lifetime."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$29;->val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 1853
    return-void

    .line 1850
    :cond_0
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCamera failed to open, closing lifetime."

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1833
    check-cast p1, Lcom/android/camera/one/OneCamera;

    .line 2836
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCamera started!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$29;->val$isCameraLifetimeClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2840
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCamera started, updating UI!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$29;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$29;->val$cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-static {v0, p1, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$4600(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/one/OneCamera;Lcom/google/android/apps/camera/async/Lifetime;)V

    .line 1833
    :cond_0
    return-void
.end method
