.class final Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;
.super Ljava/lang/Object;
.source "CloseWhenDoneImageReader.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrainAfterClose"
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;

    .line 55
    return-void
.end method


# virtual methods
.method public final onImageAvailable()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->access$100(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->access$200(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->access$300(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)V

    .line 62
    monitor-exit v1

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable()V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
