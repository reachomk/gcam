.class public Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;
.super Ljava/lang/Object;
.source "ForwardingCloseableFuture.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/CloseableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/CloseableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/async/CloseableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    .line 20
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/async/CloseableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->close()V

    .line 43
    return-void
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public final remove()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->delegate:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->remove()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method
