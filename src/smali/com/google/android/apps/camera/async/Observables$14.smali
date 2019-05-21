.class final Lcom/google/android/apps/camera/async/Observables$14;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Observables;->fromFuture(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;
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
        "Lcom/google/android/apps/camera/async/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic val$result:Lcom/google/android/apps/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Observables$14;->val$result:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 314
    check-cast p1, Lcom/google/android/apps/camera/async/Observable;

    .line 1317
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Observables$14;->val$result:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 314
    return-void
.end method
