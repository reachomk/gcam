.class public final Lcom/google/android/apps/camera/async/AndroidPriorityThread;
.super Ljava/lang/Thread;
.source "AndroidPriorityThread.java"


# instance fields
.field private final androidThreadPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 26
    iput p1, p0, Lcom/google/android/apps/camera/async/AndroidPriorityThread;->androidThreadPriority:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/async/AndroidPriorityThread;-><init>(ILjava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/google/android/apps/camera/async/AndroidPriorityThread;->setName(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/camera/async/AndroidPriorityThread;->androidThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 32
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 33
    return-void
.end method
