.class final Lcom/android/camera/behavior/Behaviors$RunnableBehavior;
.super Ljava/lang/Object;
.source "Behaviors.java"

# interfaces
.implements Lcom/android/camera/behavior/Behavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/behavior/Behaviors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RunnableBehavior"
.end annotation


# instance fields
.field private final hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;->hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    iput-object p1, p0, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;->runnable:Ljava/lang/Runnable;

    .line 83
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;->hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/behavior/Behaviors$RunnableBehavior;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    return-void
.end method
