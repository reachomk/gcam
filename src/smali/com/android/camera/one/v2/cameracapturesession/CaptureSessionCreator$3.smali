.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$3;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->run()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$3;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$3;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 293
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method
