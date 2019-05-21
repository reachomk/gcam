.class final Lcom/android/camera/burst/ConstantRotationFrameSaver$1;
.super Ljava/lang/Object;
.source "ConstantRotationFrameSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/ConstantRotationFrameSaver;->enqueue(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

.field private synthetic val$frameSavingTask:Lcom/android/camera/burst/FrameSaver$FrameSavingTask;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/ConstantRotationFrameSaver;Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    iput-object p2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->val$frameSavingTask:Lcom/android/camera/burst/FrameSaver$FrameSavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->val$frameSavingTask:Lcom/android/camera/burst/FrameSaver$FrameSavingTask;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->releaseTask(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v0}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$400(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v0}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$400(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v0}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$500(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v0}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$600(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 286
    :cond_0
    monitor-exit v1

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 282
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v1}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$400(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 283
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v2}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$400(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v2}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$500(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$1;->this$0:Lcom/android/camera/burst/ConstantRotationFrameSaver;

    invoke-static {v2}, Lcom/android/camera/burst/ConstantRotationFrameSaver;->access$600(Lcom/android/camera/burst/ConstantRotationFrameSaver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 286
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
