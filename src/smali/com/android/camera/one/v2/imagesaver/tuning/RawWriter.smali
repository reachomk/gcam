.class final Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;
.super Ljava/lang/Object;
.source "RawWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;


# static fields
.field private static final RAW_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x25

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;->RAW_FORMATS:Ljava/util/List;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeAndCloseImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;->RAW_FORMATS:Ljava/util/List;

    .line 29
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported ImageFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 34
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    throw v0
.end method
