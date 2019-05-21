.class final Lcom/google/android/apps/camera/async/ExecutorCallbackPair;
.super Ljava/lang/Object;
.source "ExecutorCallbackPair.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ExecutorCallbackPair;->callback:Lcom/google/android/apps/camera/async/Updatable;

    .line 15
    iput-object p2, p0, Lcom/google/android/apps/camera/async/ExecutorCallbackPair;->executor:Ljava/util/concurrent/Executor;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/ExecutorCallbackPair;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ExecutorCallbackPair;->callback:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method


# virtual methods
.method public final update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ExecutorCallbackPair;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/camera/async/ExecutorCallbackPair$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/camera/async/ExecutorCallbackPair$1;-><init>(Lcom/google/android/apps/camera/async/ExecutorCallbackPair;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
