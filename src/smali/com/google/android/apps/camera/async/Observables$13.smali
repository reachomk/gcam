.class final Lcom/google/android/apps/camera/async/Observables$13;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Observables;->ofSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$success:Lcom/google/android/apps/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Observables$13;->val$success:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Observables$13;->val$success:Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 294
    return-void
.end method
