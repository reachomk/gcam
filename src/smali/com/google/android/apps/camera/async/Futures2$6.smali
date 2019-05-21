.class final Lcom/google/android/apps/camera/async/Futures2$6;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Futures2;->addSuccessCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/Callback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic val$callback:Lcom/google/android/apps/camera/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Futures2$6;->val$callback:Lcom/google/android/apps/camera/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Futures2$6;->val$callback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 293
    return-void
.end method
