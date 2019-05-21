.class public Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;
.super Ljava/lang/Object;
.source "ForwardingImageWriter.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    iput-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->close()V

    .line 42
    return-void
.end method

.method public dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxImages()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->getMaxImages()I

    move-result v0

    return v0
.end method

.method public queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 37
    return-void
.end method

.method public setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->delegate:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V

    .line 47
    return-void
.end method
