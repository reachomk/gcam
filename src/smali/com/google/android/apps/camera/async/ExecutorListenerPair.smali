.class public final Lcom/google/android/apps/camera/async/ExecutorListenerPair;
.super Ljava/lang/Object;
.source "ExecutorListenerPair.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final listener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ExecutorListenerPair;->executor:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p2, p0, Lcom/google/android/apps/camera/async/ExecutorListenerPair;->listener:Ljava/lang/Runnable;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ExecutorListenerPair;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/ExecutorListenerPair;->listener:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method
