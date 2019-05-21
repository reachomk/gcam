.class final Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;
.super Ljava/lang/Object;
.source "ImageFilterEarlyRelease.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;

    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->access$000(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;

    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->access$100(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;

    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->access$200(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)V

    .line 109
    monitor-exit v1

    .line 111
    :cond_0
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
