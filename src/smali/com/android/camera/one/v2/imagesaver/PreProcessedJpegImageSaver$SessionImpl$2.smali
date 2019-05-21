.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

.field private synthetic val$wrappedImages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->val$wrappedImages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    check-cast p1, Ljava/lang/Integer;

    .line 1272
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->val$wrappedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->val$wrappedImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 1272
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->val$wrappedImages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->forImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v1, v1, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    .line 1279
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$700(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->withParameters(Ljava/util/Collection;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$2;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    .line 1280
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->access$600(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->withRotation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$Builder;->build()Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    move-result-object v0

    .line 268
    return-object v0
.end method
