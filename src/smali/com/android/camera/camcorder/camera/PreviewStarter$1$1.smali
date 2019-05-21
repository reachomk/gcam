.class final Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;
.super Ljava/lang/Object;
.source "PreviewStarter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/PreviewStarter$1;->run()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/camera/PreviewStarter$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/PreviewStarter$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;->this$1:Lcom/android/camera/camcorder/camera/PreviewStarter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;->this$1:Lcom/android/camera/camcorder/camera/PreviewStarter$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$futureSessionProxy:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 104
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    .line 1098
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;->this$1:Lcom/android/camera/camcorder/camera/PreviewStarter$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$futureSessionProxy:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/PreviewStarter$1$1;->this$1:Lcom/android/camera/camcorder/camera/PreviewStarter$1;

    iget-object v1, v1, Lcom/android/camera/camcorder/camera/PreviewStarter$1;->val$cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method
