.class public final Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;
.super Ljava/lang/Object;
.source "MainThreadThrowingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable;-><init>(Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
