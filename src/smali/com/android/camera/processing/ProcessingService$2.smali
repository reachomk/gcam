.class final Lcom/android/camera/processing/ProcessingService$2;
.super Ljava/lang/Object;
.source "ProcessingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/ProcessingService;->postNotification()V
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
    .line 304
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService$2;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$2;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$700(Lcom/android/camera/processing/ProcessingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$2;->this$0:Lcom/android/camera/processing/ProcessingService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/processing/ProcessingService;->access$802(Lcom/android/camera/processing/ProcessingService;Z)Z

    .line 309
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$2;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$900(Lcom/android/camera/processing/ProcessingService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/android/camera/processing/ProcessingService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Posting notification after timeout"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$2;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$1200(Lcom/android/camera/processing/ProcessingService;)V

    .line 313
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
