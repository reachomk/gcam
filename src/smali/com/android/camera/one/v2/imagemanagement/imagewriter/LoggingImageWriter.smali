.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;
.source "LoggingImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;
    }
.end annotation


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;)V

    .line 23
    const-string v0, "LoggingImageWriter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "close()"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 64
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->close()V

    .line 65
    return-void
.end method

.method public final dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "dequeueInputImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "dequeueInputImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method public final queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "queueInputImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;->log:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "queueInputImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$LoggingImageListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;B)V

    invoke-super {p0, v0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V

    .line 43
    return-void
.end method
