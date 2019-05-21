.class final Lcom/android/camera/processing/imagebackend/LuckyShotScorer;
.super Ljava/lang/Object;
.source "LuckyShotScorer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "LSScorer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static scoreDefault(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)D
    .locals 9

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 17
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 20
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    .line 21
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    .line 22
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 23
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    .line 24
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 19
    invoke-static/range {v0 .. v8}, Lcom/android/camera/util/ImgUtilNative;->measureSharpnessOnEdgeGivenCrop(IILjava/nio/ByteBuffer;IIIIII)F

    move-result v0

    float-to-double v0, v0

    .line 18
    return-wide v0
.end method
