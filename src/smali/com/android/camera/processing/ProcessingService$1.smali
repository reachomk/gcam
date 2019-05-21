.class final Lcom/android/camera/processing/ProcessingService$1;
.super Ljava/lang/Object;
.source "ProcessingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/ProcessingService;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    iget-object v0, v0, Lcom/android/camera/processing/ProcessingService;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingServiceManager;->popNextSession()Lcom/android/camera/processing/ProcessingTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$300(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v2, v0}, Lcom/android/camera/processing/ProcessingService;->access$402(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)Lcom/android/camera/processing/ProcessingTask;

    .line 237
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v2}, Lcom/android/camera/processing/ProcessingService;->access$500(Lcom/android/camera/processing/ProcessingService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v2}, Lcom/android/camera/processing/ProcessingService;->access$400(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingTask;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/processing/ProcessingTask;->suspend()V

    .line 240
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1, v0}, Lcom/android/camera/processing/ProcessingService;->access$600(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$300(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 245
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/processing/ProcessingService;->access$402(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)Lcom/android/camera/processing/ProcessingTask;

    .line 246
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$700(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 250
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/processing/ProcessingService;->access$802(Lcom/android/camera/processing/ProcessingService;Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/processing/ProcessingService;->access$902(Lcom/android/camera/processing/ProcessingService;Z)Z

    .line 252
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/processing/ProcessingService;->access$1002(Lcom/android/camera/processing/ProcessingService;Z)Z

    .line 253
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 254
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/android/camera/processing/ProcessingService;->stopSelf()V

    .line 255
    return-void

    .line 246
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 253
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
