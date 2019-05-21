.class final Lcom/android/camera/one/v2/core/FutureFrameServer$1;
.super Ljava/lang/Object;
.source "FutureFrameServer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/core/FutureFrameServer;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
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
        "Lcom/android/camera/one/v2/core/FrameServer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$frameServerAvailability:Lcom/google/android/apps/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FutureFrameServer$1;->val$frameServerAvailability:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    check-cast p1, Lcom/android/camera/one/v2/core/FrameServer;

    .line 1041
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FutureFrameServer$1;->val$frameServerAvailability:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-interface {p1}, Lcom/android/camera/one/v2/core/FrameServer;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
