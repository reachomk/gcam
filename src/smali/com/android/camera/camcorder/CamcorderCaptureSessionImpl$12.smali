.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->resetSession()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

.field private synthetic val$futureSessionResetResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;->val$futureSessionResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;->val$futureSessionResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 573
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 562
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1565
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0, p1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$302(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1567
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;->val$futureSessionResetResult:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 562
    return-void
.end method
