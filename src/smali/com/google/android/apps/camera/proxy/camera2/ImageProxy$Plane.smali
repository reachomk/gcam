.class public Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;
.super Ljava/lang/Object;
.source "ImageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Plane"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final pixelStride:I

.field private final rowStride:I


# direct methods
.method public constructor <init>(Landroid/media/Image$Plane;)V
    .locals 1

    .prologue
    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->pixelStride:I

    .line 2036
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->rowStride:I

    .line 2037
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->buffer:Ljava/nio/ByteBuffer;

    .line 2038
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->pixelStride:I

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->rowStride:I

    return v0
.end method
