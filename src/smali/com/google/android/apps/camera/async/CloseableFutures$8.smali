.class final Lcom/google/android/apps/camera/async/CloseableFutures$8;
.super Ljava/lang/Object;
.source "CloseableFutures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->dereference(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field final synthetic val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/android/apps/camera/async/SettableCloseableFuture;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iput-object p3, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 329
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$future:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->remove()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableFuture;

    .line 307
    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->close()V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$8;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 312
    new-instance v1, Lcom/google/android/apps/camera/async/CloseableFutures$8$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/camera/async/CloseableFutures$8$1;-><init>(Lcom/google/android/apps/camera/async/CloseableFutures$8;Lcom/google/android/apps/camera/async/CloseableFuture;)V

    .line 328
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 312
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/CloseableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
