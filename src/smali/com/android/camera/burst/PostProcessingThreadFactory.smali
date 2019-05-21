.class final Lcom/android/camera/burst/PostProcessingThreadFactory;
.super Ljava/lang/Object;
.source "PostProcessingThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/camera/async/AndroidPriorityThread;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/camera/async/AndroidPriorityThread;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method
