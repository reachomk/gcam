.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "CopyingManagedImageWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CopyingWritableImage"
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

.field private ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->lock:Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->closed:Z

    .line 113
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->closed:Z

    if-eqz v0, :cond_0

    .line 137
    monitor-exit v1

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->closed:Z

    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 143
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final submitAndClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot submit image back to ImageWriter. It is already closed."

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->access$300(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;->close()V

    .line 130
    monitor-exit v1

    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
