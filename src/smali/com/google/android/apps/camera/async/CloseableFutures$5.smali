.class final Lcom/google/android/apps/camera/async/CloseableFutures$5;
.super Ljava/lang/Object;
.source "CloseableFutures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->getOrClose(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$doneLatch:Ljava/util/concurrent/CountDownLatch;

.field private synthetic val$futureResource:Lcom/google/android/apps/camera/async/CloseableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$5;->val$futureResource:Lcom/google/android/apps/camera/async/CloseableFuture;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$5;->val$doneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$5;->val$futureResource:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$5;->val$doneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 223
    :cond_0
    return-void
.end method
