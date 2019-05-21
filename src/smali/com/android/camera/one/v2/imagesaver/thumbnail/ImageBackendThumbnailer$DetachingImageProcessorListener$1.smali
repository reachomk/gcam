.class final Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;
.super Ljava/lang/Object;
.source "ImageBackendThumbnailer.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    .line 186
    :cond_0
    iget v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    if-ne v0, v1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$302(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Z)Z

    .line 191
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$300(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$400(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$202(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 197
    :cond_2
    return-void

    .line 188
    :cond_3
    iget v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    if-ne v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$402(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Z)Z

    goto :goto_0
.end method

.method public final onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 204
    :cond_0
    return-void
.end method

.method public final onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;->this$1:Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 172
    :cond_0
    return-void
.end method
